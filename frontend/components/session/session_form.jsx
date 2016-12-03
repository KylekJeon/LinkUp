import React from 'react';
import { Link } from 'react-router';

class SessionForm extends React.Component{
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
    this.props.processForm(user).then(() => this.redirect());
  }

  redirect() {
    this.props.router.push('/');
  }

  render(){
    const header = this.props.formType;
    const link = (this.props.formType === 'login' ? 'signup' : 'login');
    const errors = this.props.errors;

    return (
      <div>
        <h1>{header}</h1>
        <form>
            <label>Username
            <input type='text' onChange={this.update("username")} value={this.state.username} />
          </label>
          <label>Email
            <input type='text' onChange={this.update("email")} value={this.state.email} />
          </label>
          <label>Password
            <input type='text' onChange={this.update("password")} value={this.state.password} />
          </label>
          <input type='submit' onClick={this.handleSubmit} value={this.props.formType} />
        </form>
        <Link to={`/${link}`}>{link}</Link>
        <span>{errors}</span>
      </div>
    );
  }

}

export default SessionForm;
