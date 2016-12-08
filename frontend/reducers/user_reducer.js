import { merge } from 'lodash';
import { RECEIVE_USER_GROUPS, RECEIVE_USER_ERRORS } from '../actions/user_actions';

const _nullUser = Object.freeze({
  userGroups: [],
  errors: []
});

const userReducer = (state = _nullUser , action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_USER_GROUPS:
      const userGroups = action.userGroups;
      return merge({}, _nullUser, { userGroups });
    case RECEIVE_USER_ERRORS:
      const errors = action.errors;
      return merge({}, _nullUser, { errors });
    default:
      return state;
  }
};

export default userReducer;
