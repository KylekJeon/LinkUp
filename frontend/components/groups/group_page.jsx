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
          groupImagePath = `url(${window.assets.sportsImage})`;
          break;
        case "music":
          groupImagePath = `url(${window.assets.musicImage})`;
          break;
        case "health & fitness":
          groupImagePath = `url(${window.assets.healthImage})`;
          break;
        case "outdoor adventures":
          groupImagePath = `url(${window.assets.outdoorImage})`;
          break;
        case "arts":
          groupImagePath = `url(${window.assets.artsImage})`;
          break;
        case "social":
          groupImagePath = `url(${window.assets.socialImage})`;
          break;
        case "career & business":
          groupImagePath = `url(${window.assets.businessImage})`;
          break;
        case "food & drinks":
          groupImagePath = `url(${window.assets.foodImage})`;
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
    let forumButton = <Link className='group-forum-button' to={`/groups/${this.props.group.id}/forum`}>Group Forum</Link>;

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
          {joinButton}
          {forumButton}
          <Link className='group-calendar-button' to={`/groups/${this.props.params.groupId}/calendar`}>
            Calendar
          </Link>
          <div className='group-header-background'>Welcome to LinkUp, a place to connect</div>
          <Link to={`/groups/${this.props.params.groupId}`} className='group-name'>Welcome to {this.state.groupName}</Link>
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
