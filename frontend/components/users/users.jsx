import React from 'react';

class User extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      user: this.props.currentUser
    };
  }

  componentDidMount(){
    if(this.currentUser.id !== parseInt(this.props.params.userId)){
      this.props.router.push('/');
    }
  }

  render(){

    return(
      <section className='profile-page-container group'>
        <div className='profile-page-name'>
          <h1>{this.state.user.first_name} {this.state.user.last_name}</h1>
        </div>
        <div className='profile-picture'>
          <img src={window.profilePicture}/>
        </div>
        <div className='profile-page-bio'>
          <span>Email: {this.state.user.email}</span><br/><br/>
          <span>Username: {this.state.user.username}</span>
        </div>
        <div className='profile-page-groups'>
          <h3>Member of these LinkUps</h3>
        </div>
      </section>
    );
  }
}

export default User;
