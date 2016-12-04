import React from 'react';
import { Link } from 'react-router';
class SignUpForm extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      username: "",
      email: "",
      password: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.redirect = this.redirect.bind(this);
    this.update = this.update.bind(this);
  }

  update(property) {
      return e => this.setState({ [property]: e.target.value });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.signup(user).then(() => this.redirect());
  }

  redirect() {
    this.props.router.push('/');
  }

  render(){
    const errors = this.props.errors;

    return (
      <section className='signup-page'>
          <div className='signup-page-container'>
          <h1 className='signup-header'>
            Adventure Awaits...
            <pre className='signup-header-text'>Already a member?    <Link to='/welcome/login'>Log in</Link></pre>
          </h1>
          <form className='signup-form'>
            <label className='signup-label'>Username
              <br/>
              <input type='text' onChange={this.update("username")} value={this.state.username} />
            </label>
            <br/>
            <label className='signup-label'>Email
              <br/>
              <input type='text' onChange={this.update("email")} value={this.state.email} />
            </label>
            <br/>
            <label className='signup-label'>Password
              <br/>
              <input type='text' onChange={this.update("password")} value={this.state.password} />
            </label>
            <input className='signup-button' type='submit' onClick={this.handleSubmit} value="Sign Up" />
          </form>
          <span>{errors}</span>
        </div>
      </section>
    );
  }

}

export default SignUpForm;