import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router';

class Front extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      display: "front-invisible",
      groupCalendar: "calendar",
      userId: this.props.currentUser.id
    };
    this.toggleProfileDrop = this.toggleProfileDrop.bind(this);
  }

  componentDidMount(){
    this.props.fetchGroups();
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
          <Link to='/' className='front-header-heading-link front-header-child'>Create a LinkUp</Link>
          <Link to='/' className='front-header-heading-logo'>LinkUp</Link>
          <ul className='front-header-list'>
            <li><Link to='/front/messages' className='front-header-nav-message'><img src={window.messageIcon}/></Link></li>
            <li><button className='front-header-nav-notification'><img src={window.notificationIcon}/></button></li>
            <li>
              <button onClick={this.toggleProfileDrop} className='front-header-nav-profile'><img src={window.profileIcon}/>
                <ul className={profileClass}>
                  <Link to={`/front/users/${this.state.userId}`}><li>Profile</li></Link>
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
              <pre className='welcome-footer-startgroup'>Start a LinkUp Group</pre>
              <Link to='/welcome/login' className='welcome-footer-section-login'>Log in</Link>
            </div>
            <div className='welcome-footer-section-bottom'>
              <Link to='#' className='welcome-footer-section-login'>Home</Link>
              <Link to='#' className='welcome-footer-section-login'>About Us</Link>
              <Link to='#' className='welcome-footer-section-login'>Contact</Link>
              <Link to='#' className='welcome-footer-section-login'>Location</Link>
              <Link to='#' className='welcome-footer-section-login'>Terms</Link>
              <Link to='#' className='welcome-footer-section-login'>API</Link>
            </div>
          </section>
        </footer>
      </section>
    );
  }
}

export default Front;
