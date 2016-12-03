import React from 'react';
import { Link } from 'react-router';


const Welcome = (props) => (
  <section>
    <header className='welcome-header'>
      <nav className='welcome-header-nav'>
        <h1>LinkUp Logo Goes Here</h1>
        <br/>
        <Link to='/welcome/login' className='welcome-header-nav-login'>Log In</Link>
        &nbsp;or&nbsp;
        <Link to='/welcome/signup' className='welcome-header-nav-signup'>Sign Up</Link>
      </nav>
    </header>
    {props.children}
  </section>
);

export default Welcome;
