import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, IndexRedirect, hashHistory } from 'react-router';
import App from './app';
import WelcomeContainer from './welcome/welcome_container';
import FrontContainer from './front/front_container';
import WelcomePage from './welcome/welcome_page';
import LoginFormContainer from './session/login_form_container';
import SignUpFormContainer from './session/signup_form_container';
import UsersContainer from './users/users_container';
import FrontPageContainer from './front/front_page_container';

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
          <Route path='welcome' onEnter={_redirectIfLoggedIn} component={ WelcomeContainer } >
            <IndexRoute component={ WelcomePage } />
            <Route path='login' component={ LoginFormContainer }/>
            <Route path='signup' component={ SignUpFormContainer }/>
          </Route>
          <Route path='front' component={ FrontContainer } onEnter={_ensureLoggedIn}>
            <IndexRoute component={ FrontPageContainer } />
            <Route path='users/:userId' component={ UsersContainer }/>
          </Route>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
