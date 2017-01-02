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
      username: "guest",
      password: "guest123"
    };
    this.props.login(user).then(() => this.redirect());
  }

  render() {
    return (
      <section className='welcome-section'>
        <header className='welcome-header'>
          <Link to='/welcome/signup' className='welcome-header-heading-link welcome-header-child'>Create a LinkUp</Link>
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
          </section>
        </footer>
      </section>
    );
  }
}

export default Welcome;
