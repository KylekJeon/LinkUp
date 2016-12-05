import React from 'react';
import { Link } from 'react-router';

class LoginForm extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      username: "",
      password: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.redirect = this.redirect.bind(this);
    this.update = this.update.bind(this);
    this.renderErrors = this.renderErrors.bind(this);
  }

  update(property) {
      return e => this.setState({ [property]: e.target.value });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.login(user).then(() => this.redirect());
  }

  redirect() {
    this.props.router.push('/');
  }

  renderErrors() {
		return(
			<ul className='login-error'>
				{this.props.errors.map((error, i) => (
					<li key={`error-${i}`}>
						{error}
					</li>
				))}
			</ul>
		);
	}


  render(){
    const errors = this.props.errors;

    return (
      <section className='login-page'>
          <div className='login-page-container'>
          <h1 className='login-header'>
            Welcome Back
            <pre className='login-header-text'>Not registered yet?   <Link to='/welcome/signup'>Sign up!</Link></pre>
          </h1>
          <form className='login-form'>
            {this.renderErrors()}
            <label className='login-label'>Username
              <br/>
              <input type='text' onChange={this.update("username")} value={this.state.username} />
            </label>
            <br/>
            <label className='login-label'>Password
              <br/>
              <input type='text' onChange={this.update("password")} value={this.state.password} />
            </label>
            <input className='login-button' type='submit' onClick={this.handleSubmit} value="Log In" />
          </form>
        </div>
      </section>
    );
  }

}

export default LoginForm;
