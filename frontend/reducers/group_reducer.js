import { merge } from 'lodash';
import { RECEIVE_GROUPS } from './../actions/group_actions';


const _nullGroups = Object.freeze({
  groups: [],
  errors: []
});

const GroupReducer = (state = _nullGroups , action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_GROUPS:
      const currentUser = action.currentUser;
      return merge({}, _nullUser, { currentUser });
    case RECEIVE_ERRORS:
      const errors = action.errors;
      return merge({}, _nullUser, { errors });
    default:
      return state;
  }
};

export default sessionReducer;
