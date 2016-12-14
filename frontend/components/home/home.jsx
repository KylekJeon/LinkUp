import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router';

class Home extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      display: "front-invisible",
      groupCalendar: "calendar",
      userId: this.props.currentUser.id,
      groupId: ""
    };
    this.toggleProfileDrop = this.toggleProfileDrop.bind(this);
  }


  componentDidMount(){
    this.props.fetchUserGroups(this.props.currentUser.id);
  }

  componentDidUpdate(){
    if(this.props.currentUser === null){
      this.props.router.push('/welcome');
    }
  }

  toggleProfileDrop() {
    if(this.state.display === "front-invisible"){
      this.setState({ display: 'front-visible' });
    } else {
      this.setState({ display: 'front-invisible' });
    }
  }

  render(){
    const profileClass = "front-header-profile-list " + this.state.display;

    return(
      <section className='front-section'>
        <header className='front-header'>
          <Link to='/home/linkup' className='front-header-heading-link front-header-child'>Create a LinkUp</Link>
          <Link to='/' className='front-header-heading-logo'>LinkUp</Link>
          <ul className='front-header-list'>
            <li>
              <button onClick={this.toggleProfileDrop} className='front-header-nav-profile'><img src={window.assets.profileIcon}/>
                <ul className={profileClass}>
                  <Link to={`/users/${this.state.userId}`}><li>Profile</li></Link>
                  <Link to='/'><li>Settings</li></Link>
                  <li onClick={this.props.logout}>Log Out</li>
                </ul>
              </button>
            </li>
        </ul>
        </header>
        {this.props.children}
        <footer className='welcome-footer'>
          <section className='welcome-footer-section'>
            <div className='welcome-footer-section-top'>
              <Link to='/home/linkup' className='welcome-footer-startgroup'>Start a LinkUp Group</Link>
            </div>
            <div className='welcome-footer-section-bottom'>
              <Link to='/' className='welcome-footer-section-login'>Home</Link>
            </div>
          </section>
        </footer>
      </section>
    );
  }
}

export default Home;
