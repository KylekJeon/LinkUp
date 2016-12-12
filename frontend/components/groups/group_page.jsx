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


  addUserToGroup() {
    this.props.addUserToGroup(this.props.group.id);
  }

  render(){
    let userList;
    let userIdList;
    let joinButton;
    let eventButton;

    if(this.props.users[0]){
      userList = this.props.users.map( (user) => (
        <li key={user.id}>{user.username}</li>
      ));
      userIdList = this.props.users.map( (user) => (
        parseInt(user.id)
      ));
      if(!userIdList.includes(this.props.currentUser.id)){
        joinButton = <button className='group-join-button' onClick={this.addUserToGroup}>Join Us!</button>;
      }
    }

    if(this.props.currentGroupAdminIds){
      if(this.props.currentGroupAdminIds.includes(this.props.currentUser.id)){
        eventButton = <Link className='group-event-button' to={'/'}>Create Event</Link>;
      }
    }

    return(
      <section className='group-page group'>
        <header className='group-header'>
          {eventButton}
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
