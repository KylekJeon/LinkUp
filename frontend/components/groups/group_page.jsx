import React from 'react';
import { Link } from 'react-router';

class GroupPage extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      groupName: "",
      groupDescription: ""
    };
    this.addUserToGroup = this.addUserToGroup.bind(this);
    this.removeUserFromGroup = this.removeUserFromGroup.bind(this);
    this.makeAdmin = this.makeAdmin.bind(this);
  }

  componentWillReceiveProps(nextProps){
    if(parseInt(nextProps.params.groupId) !== this.props.group.id){
      this.props.fetchGroup(nextProps.params.groupId);
      this.props.fetchUsersForGroup(this.props.params.groupId);
    }
    this.setState({ groupName: nextProps.group.name, groupDescription: nextProps.group.description});
  }

  componentDidMount(){
    this.props.fetchGroup(this.props.params.groupId);
    this.props.fetchUsersForGroup(this.props.params.groupId);
    this.props.fetchCurrentGroupAdmins(this.props.params.groupId);
  }

  componentWillUnmount(){
    const front = $(".front-section");
    front.css("background-image", "url(/assets/new_york-acac71507beee100b804470d31ad9440a8f727b2835939a04c99bca197307735.jpg)");
  }

  makeAdmin(userId) {
    return e => {
      e.preventDefault();
      this.props.makeUserGroupAdmin(userId, this.props.group.id);
    };
  }

  addUserToGroup() {
    this.props.addUserToGroup(this.props.group.id);
  }

  removeUserFromGroup() {
    this.props.removeUserFromGroup(this.props.group.id);
    if(this.props.currentGroupAdminIds.includes(this.props.currentUser.id)){
      this.props.deleteAdminFromGroup(this.props.group.id);
    }
  }

  render(){


    if(this.props.group.name){
      let groupImagePath;
      switch(this.props.group.category){
        case "sports":
          groupImagePath = "url(/assets/sports_image-44cb5346c86eb174319c32780182358a89e6970144bdd7f260a92cf282e83601.jpg)";
          break;
        case "music":
          groupImagePath = "url(/assets/music_image-9620a76b9042a3f3847e5e1df07232fdcd9cb00ed5734dcbdb0a66fefecf23e9.jpg)";
          break;
        case "health & fitness":
          groupImagePath = "url(/assets/health_image-9c3c794fd38c6d02ed2c69ccdfcc4b9c5c71ca6785d3f843b9f8a9fd9c1ad75c.jpg)";
          break;
        case "outdoor adventures":
          groupImagePath = "url(/assets/outdoor_image-9451eb1aa24098ccdf775c51f7e3a75367038a2a2e05d8f49d6a8a88e6535174.jpg)";
          break;
        case "arts":
          groupImagePath = "url(/assets/arts_image-836b9c781f158a8b9f2275d9db41edd206a33e5fe4460e0803aedfd5563f602b.jpg)";
          break;
        case "social":
          groupImagePath= "url(/assets/social_image-1ebb4b235ad8ad5d58bc94c30eef7f18c48ad1084f1132a24d9cf3073d95d649.jpg)";
          break;
        case "career & business":
          groupImagePath = "url(/assets/business_image-f6d7ca4c5bdac4cf78bb32de55177687ebfca10396fb194dc561c6ae5c05af40.jpg)";
          break;
        case "food & drinks":
          groupImagePath = "url(/assets/food_image-493b0eeaf912395152fbabedbe280d379c068038c1aac7be42ca81e2281be24b.jpg)";
          break;
      }
      const front = $(".front-section");
      front.css("background-image", groupImagePath);
      front.css("background-size", "100%");
    }

    let userList;
    let userIdList;
    let joinButton;
    let eventButton;
    let editButton;

    if(this.props.users[0]){
      userList = this.props.users.map( (user) => {
        if(this.props.currentGroupAdminIds.includes(user.id)){
          return <li key={user.id}>{user.first_name} {user.last_name} Administrator</li>;
        } else {
          return <li key={user.id}>{user.first_name} {user.last_name}</li>;
        }
      });
      userIdList = this.props.users.map( (user) => (
        parseInt(user.id)
      ));
      if(!userIdList.includes(this.props.currentUser.id)){
        joinButton = <button className='group-join-button' onClick={this.addUserToGroup}>Join Us!</button>;
      } else {
        joinButton = <button className='group-join-button' onClick={this.removeUserFromGroup}>Leave Group</button>;
      }
    }

    if(this.props.currentGroupAdminIds){
      if(this.props.currentGroupAdminIds.includes(this.props.currentUser.id)){
        eventButton = <Link className='group-event-button' to={`/groups/${this.props.group.id}/event`}>Create Event</Link>;
        editButton = <Link className='group-edit-button' to={`/groups/${this.props.group.id}/edit`}>Edit Group</Link>;
        userList = this.props.users.map( (user) => {
          if(this.props.currentGroupAdminIds.includes(user.id)){
            return <li key={user.id}>{user.first_name} {user.last_name} Administrator</li>;
          } else {
            return <li key={user.id}>{user.first_name} {user.last_name}<button onClick={this.makeAdmin(user.id)}>Make Admin</button></li>;
          }
        });
      }
    }

    return(
      <section className='group-page group'>
        <header className='group-header'>
          {eventButton}
          {editButton}
          <Link className='group-calendar-button' to={`/groups/${this.props.params.groupId}/calendar`}>
            Calendar
          </Link>
          <div className='group-header-background'>Welcome to LinkUp, a place to connect</div>
          <Link to={`/groups/${this.props.params.groupId}`} className='group-name'>Welcome to {this.state.groupName}</Link>
          {joinButton}
        </header>
        <aside className='group-aside-container'>
          <ul className='group-users-list'>
            Current Members:
            <div/>
            {userList}
          </ul>
        </aside>
        { this.props.children }
      </section>
    );
  }


}

export default GroupPage;
