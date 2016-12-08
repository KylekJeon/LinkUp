import React from 'react';
import GroupPageContent from './group_page_content';

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
    if(this.props.users[0]){
      userList = this.props.users.map( (user) => (
        <li key={user.id}>{user.username}</li>
      ));
    }

    return(
      <section className='group-page group'>
        <header className='group-header'>
          <div className='group-header-background'>Welcome to LinkUp, a place to connect</div>
          <div className='group-name'>Welcome to {this.state.groupName}</div>
          <button className='group-join-button' onClick={this.addUserToGroup}>Join Us!</button>
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
