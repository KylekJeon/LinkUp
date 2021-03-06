import { merge } from 'lodash';
import { RECEIVE_CURRENT_USER, RECEIVE_SESSION_ERRORS, CLEAR_SESSION_ERRORS } from '../actions/session_actions';

const _nullUser = Object.freeze({
  currentUser: null,
  errors: []
});

const sessionReducer = (state = _nullUser , action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_CURRENT_USER:
      const currentUser = action.currentUser;
      return Object.assign({}, _nullUser, { currentUser });
    case RECEIVE_SESSION_ERRORS:
      const errors = action.errors;
      return Object.assign({}, _nullUser, { errors });
    case CLEAR_SESSION_ERRORS:
      return Object.assign({}, state, { errors: null });
    default:
      return state;
  }
};

export default sessionReducer;
