import React from 'react';
import GroupPageContent from './group_page_content';
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
  }


  addUserToGroup() {
    this.props.addUserToGroup(this.props.group.id);
  }

  render(){
    let userList;
    let userIdList;
    let joinButton;

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

    return(
      <section className='group-page group'>
        <header className='group-header'>
          <div className='group-header-background'>Welcome to LinkUp, a place to connect</div>
          <Link to={`/groups/${this.props.params.groupId}`} className='group-name'>Welcome to {this.state.groupName}</Link>
          {joinButton}
        </header>
        <aside className='group-aside'>
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
