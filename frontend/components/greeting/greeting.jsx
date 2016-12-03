import React from 'react';
import { Link } from 'react-router';

const Greeting = ({ currentUser, logout }) => {

  let content1;
  let content2;

  if(currentUser !== null){
    content1 = <h3>Welcome {currentUser.username}!</h3>
    content2 = <button onClick={logout}>Logout</button>
  } else {
    content1 = <Link to='/signup'>Sign Up</Link>
    content2 = <Link to='/login'>Log In</Link>
  }

  return (
    <section className="current_user">
      {content1}
      <br />
      {content2}
    </section>
  )
}

export default Greeting
