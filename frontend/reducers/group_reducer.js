import { merge } from 'lodash';
import { RECEIVE_GROUPS, RECEIVE_GROUP_ERRORS, RECEIVE_GROUP_USERS, RECEIVE_CURRENT_GROUP } from './../actions/group_actions';


const _nullGroups = Object.freeze({
  groups: {},
  users: [],
  errors: [],
  currentGroup: {}
});

const GroupReducer = (state = _nullGroups , action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_GROUPS:
      const groups = action.groups;
      return merge({}, state, { groups });
    case RECEIVE_CURRENT_GROUP:
      const currentGroup = action.group;
      return merge({}, state, { currentGroup });
    case RECEIVE_GROUP_ERRORS:
      const errors = action.errors;
      return merge({}, state, { errors });
    case RECEIVE_GROUP_USERS:
      const users = action.users;
      return merge({}, state, { users });
    default:
      return state;
  }
};

export default GroupReducer;
