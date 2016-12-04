import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import { connect } from 'react-redux';

class App extends React.Component {
  constructor(props){
    super(props);
  }

  componentDidUpdate(){
    if(this.props.currentUser === null){
      this.props.router.push('/welcome');
    }
  }

  render(){

    return(
      <div>
        <h1>LinkUp</h1>
        <GreetingContainer />
        { this.props.children }
      </div>
    );
  }
}

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser
});

export default connect(
  mapStateToProps
)(App);
