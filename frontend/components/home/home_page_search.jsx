import React from 'react';
import { Link } from 'react-router';


class HomePageSearch extends React.Component {

  constructor(props){
    super(props);
  }

  componentDidMount() {
    this.props.fetchGroups(this.props.params.searchQuery);
  }

  componentWillReceiveProps(nextProps){
    if(this.props.params.searchQuery !== nextProps.params.searchQuery){
      this.props.fetchGroups(nextProps.params.searchQuery);
    }
  }

  render() {
    let userGroups;
    let userGroupsThrees = [];
    let userGroupList = [];
    if(this.props.SearchGroups.length !== 0){
      userGroups = this.props.SearchGroups.map((group) => (
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
        const ul = <ul key={j} className='content-user-group-list'>{liList}</ul>;
        userGroupList.push(ul);
      }

    }

    return (
      <section className='content-user-groups'>
        <h1>We've Found These LinkUps</h1>
        {userGroupList}
      </section>
    );
  }
}

export default HomePageSearch;
