import React from 'react';
import GreetingContainer from './../greeting/greeting_container';
import { connect } from 'react-redux';
import { Link } from 'react-router';

class Front extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      display: "front-invisible",
      groupCalendar: "calendar"
    };
    this.toggleProfileDrop = this.toggleProfileDrop.bind(this);
    this.toggleGroup = this.toggleGroup.bind(this);
    this.toggleCalendar = this.toggleCalendar.bind(this);
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

  toggleGroup() {
    this.setState({ groupCalendar: "group"});
  }

  toggleCalendar() {
    this.setState({ groupCalendar: "calendar" });
  }

  render(){
    const profileClass = "front-header-profile-list " + this.state.display;
    let group = "search-bar-group ";
    let calendar = "search-bar-calendar ";
    if(this.state.groupCalendar === 'calendar'){
      calendar = calendar + "search-chosen";
    } else {
      group = group + "search-chosen";
    }


    return(
      <section className='front-section'>
        <header className='front-header'>
          <Link to='/' className='front-header-heading-link front-header-child'>Create a LinkUp</Link>
          <Link to='/' className='front-header-heading-logo'>LinkUp</Link>
          <ul className='front-header-list'>
            <li><Link to='/front/messages' className='front-header-nav-message'><img src="https://cdn2.iconfinder.com/data/icons/messages-chat-2/24/chat-bubble-circle-3-512.png"/></Link></li>
            <li><button className='front-header-nav-notification'><img src="https://freeiconshop.com/files/edd/notification-outline.png"/></button></li>
            <li>
              <button onClick={this.toggleProfileDrop} className='front-header-nav-profile'><img src="https://www.freeiconspng.com/uploads/user-icon-png-person-user-profile-icon-20.png"/>
                <ul className={profileClass}>
                  <li><Link to='/'>Profile</Link></li>
                  <li><Link to='/'>Settings</Link></li>
                  <li onClick={this.props.logout}>Log Out</li>
                </ul>
              </button>
            </li>
        </ul>
        </header>
        <section className='content-header'>
          <div className='content-header-box'>
            <div className='content-header-text'>
              <h4 className='content-header-text-header'>YOUR NEXT MEETUP</h4>
            </div>
            <div className='content-header-next-box group'>
              <div className='content-header-nextlinkup'>
                <h3>So You've Been Accepted to App Academy</h3>
                <h4>How to be Okay With Doing Nothing but Coding With Your Life and Losing All Friends and Loved Ones for Three Months</h4>
                <h5>Hosted by the Masochist Association of New York</h5>
              </div>
              <div className='content-header-calendar-location'>
                <h3>Date: Forever. This is your life now</h3>
                <h3>Location: New York City</h3>
              </div>
            </div>
          </div>
        </section>
        <section className='content-main group'>
          <form className='search-bar group'>
            <input className='search-bar-input' type='text' placeholder="All LinkUps"/>
            <p> Within 5 miles of New York </p>
            <button onClick={this.toggleCalendar} className={calendar}>Calendar</button>
            <button onClick={this.toggleGroup} className={group}>Groups</button>
          </form>
          <div className='content-main-list-day'>
            <h4>THURSDAY, DECEMBER 22</h4>
          <ul className='content-main-list group'>
            <li>
              <div className='content-list-time'>7:00PM</div>
              <span className='content-list-item content-list-first'>Happy Birthday To Me</span>
              <span className='content-list-item content-list-middle'>Birthday Party? Nah, App Academy Man</span>
              <span className='content-list-item content-list-last'>Everyone in class going</span>
            </li>
            <li>
              <div className='content-list-time'>8:00PM</div>
              <span className='content-list-item content-list-first'>freak out about fullstack</span>
              <span className='content-list-item content-list-middle'>Who's staying overnight?</span>
              <span className='content-list-item content-list-last'>Most people in class going</span>
            </li>
            <li>
              <div className='content-list-time'>9:00PM</div>
              <span className='content-list-item content-list-first'>slumber party at the app</span>
              <span className='content-list-item content-list-middle'>I hope you brought your pillow armor</span>
              <span className='content-list-item content-list-last'>the brave, the bold, the fearless going</span>
            </li>
          </ul>
        </div>
        <div className='content-main-list-day'>
          <h4>THURSDAY, DECEMBER 22</h4>
        <ul className='content-main-list group'>
          <li>
            <div className='content-list-time'>7:00PM</div>
            <span className='content-list-item content-list-first'>Happy Birthday To Me</span>
            <span className='content-list-item content-list-middle'>Birthday Party? Nah, App Academy Man</span>
            <span className='content-list-item content-list-last'>Everyone in class going</span>
          </li>
          <li>
            <div className='content-list-time'>8:15PM</div>
            <span className='content-list-item content-list-first'>freak out about fullstack</span>
            <span className='content-list-item content-list-middle'>Who's staying overnight?</span>
            <span className='content-list-item content-list-last'>Most people in class going</span>
          </li>
          <li>
            <div className='content-list-time'>9:00PM</div>
            <span className='content-list-item content-list-first'>slumber party at the app</span>
            <span className='content-list-item content-list-middle'>I hope you brought your pillow armor</span>
            <span className='content-list-item content-list-last'>the brave, the bold, the fearless going</span>
          </li>
        </ul>
      </div>
        <ul className='content-main-list-linkups'>
          <li><Link to='/'>All LinkUps</Link></li>
          <li><Link to='/'>My LinkUps & Suggestions</Link></li>
          <li><Link to='/'>My LinkUps</Link></li>
          <li><Link to='/'>I'm going</Link></li>
        </ul>
        </section>
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

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser
});

export default connect(
  mapStateToProps
)(Front);
