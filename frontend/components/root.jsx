import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, IndexRedirect, hashHistory } from 'react-router';
import App from './app';
import WelcomeContainer from './welcome/welcome_container';
import WelcomePage from './welcome/welcome_page';
import HomeContainer from './home/home_container';
import HomePageContainer from './home/home_page_container';
import LoginFormContainer from './session/login_form_container';
import SignUpFormContainer from './session/signup_form_container';
import UsersContainer from './users/users_container';
import GroupPageContainer from './groups/group_page_container';
import GroupPageContentContainer from './groups/group_page_content_container';
import EventPageContainer from './events/event_page_container';


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
          <IndexRedirect to='/home' />
          <Route path='welcome' onEnter={_redirectIfLoggedIn} component={ WelcomeContainer } >
            <IndexRoute component={ WelcomePage } />
            <Route path='login' component={ LoginFormContainer }/>
            <Route path='signup' component={ SignUpFormContainer }/>
          </Route>
          <Route path='home' component={ HomeContainer } onEnter={_ensureLoggedIn}>
            <IndexRoute component={ HomePageContainer } />
            <Route path='/users/:userId' component={ UsersContainer }/>
            <Route path='/groups/:groupId' component={ GroupPageContainer }>
              <IndexRoute component={ GroupPageContentContainer } />
              <Route path='events/:eventId' component={ EventPageContainer }/>
            </Route>
          </Route>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
