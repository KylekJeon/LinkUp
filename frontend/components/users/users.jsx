import React from 'react';

class User extends React.Component {
  constructor(props){
    super(props);
  }

  componentDidMount(){
    if(this.props.currentUser.id !== parseInt(this.props.params.userId)){
      this.props.router.push('/');
    }
  }

  render(){

    return(
      <section className='profile-page-container group'>
        <div className='profile-page-name'>
          <h1>{this.props.currentUser.first_name} {this.props.currentUser.last_name}</h1>
        </div>
        <div className='profile-picture'>
          <img src={window.profilePicture}/>
        </div>
        <div className='profile-page-bio'>
          <span>Email: {this.props.currentUser.email}</span><br/><br/>
          <span>Username: {this.props.currentUser.username}</span>
        </div>
        <div className='profile-page-groups'>
          <h3>Member of these LinkUps</h3>
        </div>
      </section>
    );
  }
}

export default User;
