import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, IndexRedirect, hashHistory } from 'react-router';
import App from './app';
import Welcome from './welcome/welcome';
import Front from './front';
import WelcomePage from './welcome/welcome_page';
import LoginFormContainer from './session/login_form_container';
import SignUpFormContainer from './session/signup_form_container';


const Root = ({ store }) => {

  const _redirectIfLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if(currentUser) {
      replace('/');
    }
  }

  const _ensureLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if(!currentUser) {
      replace('/welcome');
    }
  }

  return (
    <Provider store={ store }>
      <Router history={ hashHistory }>
        <Route path='/' component={ App }>
          <IndexRedirect to='/front' />
          <Route path='front' component={ Front } onEnter={_ensureLoggedIn} />
          <Route path='welcome' onEnter={_redirectIfLoggedIn} component={ Welcome } >
            <IndexRoute component={ WelcomePage } />
            <Route path='login' component={ LoginFormContainer }/>
            <Route path='signup' component={ SignUpFormContainer }/>
          </Route>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
