import React from 'react';

class User extends React.Component {
  constructor(props){
    super(props);
    this.updateFiles = this.updateFiles.bind(this);
    this.state = {
      imageFile: null,
      imageUrl: ""
    };
  }

  componentDidMount(){
    if(this.props.currentUser.id !== parseInt(this.props.params.userId)){
      this.props.router.push('/');
    }
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
  }

  render(){
    let profilePhoto;
    let profileSubmit;
    if(this.state.imageUrl === ""){
      profilePhoto = <img src={this.props.currentUser.image_url}/>;
    } else {
      profilePhoto = <img src={this.state.imageUrl}/>;
      profileSubmit = <button onClick={this.updateProfilePhoto}>Update your profile photo!</button>;
    }


    debugger
    return(
      <section className='profile-page-container group'>
        <div className='profile-page-name'>
          <h1>{this.props.currentUser.first_name} {this.props.currentUser.last_name}</h1>
        </div>
        <div className='profile-picture'>
          {profilePhoto}
          {profileSubmit}
        </div>
        <div className='profile-page-bio'>
          <span>Email: {this.props.currentUser.email}</span><br/><br/>
          <span>Username: {this.props.currentUser.username}</span>
        </div>
        <div className='profile-page-groups'>
          <h3>Member of these LinkUps</h3>
        </div>
      </section>
    );
  }
}

export default User;
