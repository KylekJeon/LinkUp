import React from 'react';
import { Link } from 'react-router';
class SignUpForm extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      username: "",
      email: "",
      password: "",
      first_name: "",
      last_name: "",
      confirm_email: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.redirect = this.redirect.bind(this);
    this.update = this.update.bind(this);
    this.renderErrors = this.renderErrors.bind(this);
  }

  componentDidMount(){
    this.props.clearError();
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

  renderErrors() {
    if(this.props.errors){
      return(
        <ul className='signup-error'>
          {this.props.errors.map((error, i) => (
            <li key={`error-${i}`}>
              {error}
            </li>
          ))}
        </ul>
      );
    }
	}

  render(){

    return (
      <section className='signup-page'>
          <div className='signup-page-container'>
          <h1 className='signup-header'>
            Adventure Awaits...
            <pre className='signup-header-text'>Already a member?    <Link to='/welcome/login'>Log in</Link></pre>
          </h1>
          <form className='signup-form'>
            {this.renderErrors()}
            <label className='signup-label'>Username
              <br/>
              <input type='text' onChange={this.update("username")} value={this.state.username} />
            </label>
            <label className='signup-label'>Email
              <br/>
              <input type='text' onChange={this.update("email")} value={this.state.email} />
            </label>
            <label className='signup-label'>Confirm Email
              <br/>
              <input type='text' onChange={this.update("confirm_email")} value={this.state.confirm_email} />
            </label>
            <label className='signup-label'>First Name
              <br/>
              <input type='text' onChange={this.update("first_name")} value={this.state.first_name} />
            </label>
            <label className='signup-label'>Last Name
              <br/>
              <input type='text' onChange={this.update("last_name")} value={this.state.last_name} />
            </label>
            <label className='signup-label'>Password
              <br/>
              <input type='text' onChange={this.update("password")} value={this.state.password} />
            </label>
            <input className='signup-button' type='submit' onClick={this.handleSubmit} value="Sign Up" />
          </form>
        </div>
      </section>
    );
  }

}

export default SignUpForm;
