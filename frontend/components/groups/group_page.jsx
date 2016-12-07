import React from 'react';

class GroupPage extends React.Component {
  constructor(props){
    super(props);
    this.addUserToGroup = this.addUserToGroup.bind(this);
  }

  componentDidMount(){
    this.props.fetchGroup(this.props.params.groupId);
    this.props.fetchUsersForGroup(this.props.params.groupId);
  }

  addUserToGroup() {
    this.props.addUserToGroup(this.props.group.id);
  }

  render(){
    let groupName;
    let userList;
    if(this.props.group){
      groupName = this.props.group.name;
    }
    if(this.props.users[0]){
      userList = this.props.users.map( (user) => (
        <li key={user.id}>{user.username}</li>
      ));
    }

    return(
      <section className='group-page group'>
        <header className='group-header'>
          <div className='group-name'>{groupName}</div>
          <button className='group-join-button' onClick={this.addUserToGroup}>Join Us!</button>
        </header>
        <aside className='group-aside'>
          <ul className='group-users-list'>
            {userList}
          </ul>
        </aside>
        <section className='group-content'>
          <p className='group-description'>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>
        </section>
        <section className='group-upcoming'>

        </section>
        <section className='group-past'>
        </section>
      </section>
    );
  }


}

export default GroupPage;
