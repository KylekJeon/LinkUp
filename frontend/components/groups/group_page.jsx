import React from 'react';

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
          <div className='group-name'>{this.state.groupName}</div>
          <button className='group-join-button' onClick={this.addUserToGroup}>Join Us!</button>
        </header>
        <aside className='group-aside'>
          <ul className='group-users-list'>
            {userList}
          </ul>
        </aside>
        <section className='group-content'>
          <p className='group-description'>
            {this.state.groupDescription}
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
