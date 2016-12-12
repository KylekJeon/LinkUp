import { merge } from 'lodash';
import { RECEIVE_USER_GROUPS, RECEIVE_CURRENT_USER_NEXT_EVENT, RECEIVE_USER_ERRORS } from '../actions/user_actions';

const _nullUser = Object.freeze({
  userGroups: [],
  currentUserNextEvent: {},
  errors: []
});

const userReducer = (state = _nullUser , action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_USER_GROUPS:
      const userGroups = action.userGroups;
      return Object.assign({}, state, { userGroups });
    case RECEIVE_CURRENT_USER_NEXT_EVENT:
      const currentUserNextEvent = action.currentUserNextEvent;
      return Object.assign({}, state, { currentUserNextEvent });
    case RECEIVE_USER_ERRORS:
      const errors = action.errors;
      return Object.assign({}, state, { errors });
    default:
      return state;
  }
};

export default userReducer;
