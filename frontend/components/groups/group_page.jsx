import React from 'react';

class GroupPage extends React.Component {
  constructor(props){
    super(props);
    this.addUserToGroup = this.addUserToGroup.bind(this);
  }

  addUserToGroup() {
    this.props.addUserToGroup(this.props.group.id);
  }

  render(){
    let groupName;
    if(this.props.group){
      groupName = this.props.group.name;
    }

    return(
      <section className='group-page group'>
        <header className='group-header'>
          <div className='group-name'>{this.props.group.name}</div>
          <button className='group-join-button' onClick={this.addUserToGroup}>Join Us!</button>
        </header>
        <aside className='group-aside'>
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
