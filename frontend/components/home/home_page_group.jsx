import React from 'react';
import { Link } from 'react-router';


class HomePageGroups extends React.Component {

  constructor(props){
    super(props);
  }

  componentDidMount() {
    this.props.fetchGroups("user");
  }

  render() {
    let userGroups;
    let userGroupsThrees = [];
    let userGroupList = [];
    if(this.props.HomePageGroups.length !== 0){
      userGroups = this.props.HomePageGroups.map((group) => (
        <div key={group.id} className='content-user-group-item-container'>
        <li className='content-user-group-item' key={group.id}><Link key={group.id} to={`/groups/${group.id}`}>{group.name}</Link></li></div>
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
        const ul = <ul key={j} className='content-user-group-list group'>{liList}</ul>;
        userGroupList.push(ul);
      }

    }

    return (
      <section className='content-user-groups'>
        <h1>Your LinkUps</h1>
        {userGroupList}
      </section>
    );
  }
}

export default HomePageGroups;