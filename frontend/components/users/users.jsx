import React from 'react';
import { Link } from 'react-router';

class User extends React.Component {
  constructor(props){
    super(props);
    this.updateFiles = this.updateFiles.bind(this);
    this.state = {
      imageFile: null,
      imageUrl: "",
      uploaded: false
    };
    this.updateProfilePhoto = this.updateProfilePhoto.bind(this);
  }

  componentDidMount(){
    if(this.props.currentUser.id !== parseInt(this.props.params.userId)){
      this.props.router.push('/');
    }
    this.props.fetchGroups("user");
  }

  updateFiles(e){
    const file = e.currentTarget.files[0];
    const fileReader = new FileReader();
    fileReader.onloadend = () => {
      this.setState({ imageFile: file, imageUrl: fileReader.result });
    };

    if(file){
      fileReader.readAsDataURL(file);
    }
  }

  updateProfilePhoto(e){
    e.preventDefault();
    const formData = new FormData();
    formData.append("user[profile_photo]", this.state.imageFile);
    this.props.updateUserProfilePhoto(this.props.currentUser.id, formData);
    this.setState({ imageFile: null, imageUrl: ""});
  }

  render(){
    let profilePhoto;
    let profileSubmit;
    if(this.state.imageUrl === ""){
      profilePhoto = <img src={this.props.currentUserImage}/>;
    } else {
      profilePhoto = <img src={this.state.imageUrl}/>;
      if (parseInt(this.props.routeParams.userId) === this.props.currentUser.id){
        profileSubmit = <button className="profile-submit" onClick={this.updateProfilePhoto}>Upload Photo</button>;
      }
    }

    let userGroups;
    let userGroupsThrees = [];
    let userGroupList = [];
    if(this.props.currentUserGroups.length !== 0){
      userGroups = this.props.currentUserGroups.map((group) => (
        <div key={group.id} className='profile-page-group-item-container'>
        <li className='profile-page-group-item' key={group.id}><Link key={group.id} to={`/groups/${group.id}`}>{group.name}</Link></li></div>
      ));
      for(let i = 0; i < userGroups.length; i++){
        if(i % 3 === 0){
          userGroupsThrees[i/3] = [];
          userGroupsThrees[i/3].push(userGroups[i]);
        } else {
          userGroupsThrees[Math.floor(i/3)].push(userGroups[i]);
        }
      }
      for(let j = 0; j < userGroupsThrees.length; j++){
        const liList = userGroupsThrees[j];
        const ul = <ul key={j} className='profile-page-group-list group'>{liList}</ul>;
        userGroupList.push(ul);
      }
    }

    return(
      <section className='profile-page'>
        <section className='profile-page-container group'>
          <div className='profile-page-name'>
            <h1>{this.props.currentUser.first_name} {this.props.currentUser.last_name}</h1>
          </div>
          <div className='profile-picture'>
            <div className='profile-picture-container'>
              {profilePhoto}
              <div className='profile-change'>
                <span>Change Your Picture</span>
                <input type='file' onChange={this.updateFiles} />
                {profileSubmit}
              </div>
            </div>
          </div>
          <div className='profile-page-bio'>
            <span>Email: {this.props.currentUser.email}</span><br/><br/>
            <span>Username: {this.props.currentUser.username}</span><br/><br/>
            <span>You've Been a Member Since: {this.props.currentUser.created_at}</span>
          </div>
          <div className='profile-page-groups'>
            <h3>Your LinkUps</h3>
            {userGroupList}
          </div>
        </section>
      </section>
    );
  }
}

export default User;
