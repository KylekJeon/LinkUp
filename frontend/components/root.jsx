import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import App from './app';
import Welcome from './welcome';
import Front from './front'
import SessionFormContainer from './session/session_form_container';


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
        <Route path='/' component={ Front }>
          <IndexRoute component={ App } onEnter={_ensureLoggedIn} />
          <Route path='welcome' onEnter={_redirectIfLoggedIn} component={ Welcome } />
            <Route path='welcome/login' component={ SessionFormContainer }/>
            <Route path='welcome/signup' component={ SessionFormContainer }/>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
