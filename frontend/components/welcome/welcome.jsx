import React from 'react';
import { Link } from 'react-router';
import ReactPlayer from 'react-player';


class Welcome extends React.Component {
  constructor(props){
    super(props);
    this.loginGuest = this.loginGuest.bind(this);
    this.redirect = this.redirect.bind(this);
  }

  redirect() {
    this.props.router.push('/');
  }

  loginGuest(e) {
    e.preventDefault();
    const user = {
      username: "Guest",
      password: "guest123"
    };
    this.props.login(user).then(() => this.redirect());
  }

  render() {
    return (
      <section className='welcome-section'>
        <header className='welcome-header'>
          <Link to='/' className='welcome-header-heading-link welcome-header-child'>Create a LinkUp</Link>
          <Link to='/' className='welcome-header-heading-logo'>LinkUp</Link>
          <ul className='welcome-header-list welcome-header-child'>
            <li><button onClick={this.loginGuest} className='welcome-header-guest'>Guest</button></li>
            <li><Link to='/welcome/login' className='welcome-header-nav-login'>Log In</Link></li>
            <li><Link to='/welcome/signup' className='welcome-header-nav-signup'>Sign Up</Link></li>
          </ul>
        </header>
        <div className='welcome-header-body'>
          {this.props.children}
        </div>
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

export default Welcome;
