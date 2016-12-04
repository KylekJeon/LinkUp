import React from 'react';
import { Link } from 'react-router';
import ReactPlayer from 'react-player';


const Welcome = (props) => (
  <div>
    <section className='welcome-section'>
      <header className='welcome-header'>
          <Link to='/' className='welcome-header-heading-link welcome-header-child'>Create a LinkUp</Link>
          <Link to='/' className='welcome-header-heading-logo'>LinkUp</Link>
          <ul className='welcome-header-list welcome-header-child'>
            <li><Link to='/welcome/login' className='welcome-header-nav-login'>Log In</Link></li>
            <li><Link to='/welcome/signup' className='welcome-header-nav-signup'>Sign Up</Link></li>
          </ul>
      </header>
      <div className='welcome-header-body'>
      {props.children}
      </div>
    </section>
    <div className="video-wrapper">
      <iframe
        className="wrapped-video"
        src="https://www.youtube.com/embed/BvJIfDy6CVQ?wmode=transparent&autoplay=1"
        frameborder="0"
      >
      </iframe>
    </div>
  </div>
);

export default Welcome;
