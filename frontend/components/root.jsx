import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, IndexRedirect, hashHistory } from 'react-router';

import App from './app';

import WelcomeContainer from './welcome/welcome_container';
import WelcomePage from './welcome/welcome_page';
import LoginFormContainer from './session/login_form_container';
import SignUpFormContainer from './session/signup_form_container';
import ExploreContainer from './welcome/explore_container';

import HomeContainer from './home/home_container';
import HomePageContainer from './home/home_page_container';
import HomePageEventContainer from './home/home_page_event_container';
import HomePageGroupContainer from './home/home_page_group_container';
import HomePageSearchContainer from './home/home_page_search_container';

import UsersContainer from './users/users_container';

import GroupPageContainer from './groups/group_page_container';
import GroupPageContentContainer from './groups/group_page_content_container';
import EventPageContainer from './events/event_page_container';
import CalendarContainer from './groups/calendar_container';
import LinkUpFormContainer from './groups/linkup_form_container';
import EventFormContainer from './events/event_form_container';
import GroupEditContainer from './groups/group_edit_container';
import EventEditContainer from './events/event_edit_container';
import ForumContainer from './groups/forum_container';

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
      <Router onUpdate={() => window.scrollTo(0, 0)} history={ hashHistory }>
        <Route path='/' component={ App }>
          <IndexRedirect to='/home' />
          <Route path='welcome' onEnter={_redirectIfLoggedIn} component={ WelcomeContainer } >
            <IndexRoute component={ WelcomePage } />
            <Route path='login' component={ LoginFormContainer }/>
            <Route path='signup' component={ SignUpFormContainer }/>
            <Route path='explore/:category' component={ ExploreContainer } />
          </Route>
          <Route path='home' component={ HomeContainer } onEnter={_ensureLoggedIn}>
            <IndexRedirect to='/home/events' />
            <Route path='/home/events' component={ HomePageContainer }>
              <IndexRoute component={ HomePageEventContainer }/>
              <Route path='/home/groups' component={ HomePageGroupContainer }/>
              <Route path='/home/search/:searchQuery' component={ HomePageSearchContainer }/>
            </Route>
            <Route path='/home/linkup' component={ LinkUpFormContainer }/>
            <Route path='/users/:userId' component={ UsersContainer }/>
            <Route path='/groups/:groupId' component={ GroupPageContainer }>
              <IndexRoute component={ GroupPageContentContainer } />
              <Route path='/groups/:groupId/edit' component={ GroupEditContainer }/>
              <Route path='/groups/:groupId/calendar' component={ CalendarContainer } />
              <Route path='/groups/:groupId/event' component={ EventFormContainer } />
              <Route path='/groups/:groupId/forum' component={ ForumContainer } />
              <Route path='events/:eventId' component={ EventPageContainer }/>
              <Route path='events/:eventId/edit' component={ EventEditContainer }/>
            </Route>
          </Route>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
