import { merge } from 'lodash';
import { RECEIVE_GROUPS, RECEIVE_GROUP_ERRORS, RECEIVE_GROUP_USERS, RECEIVE_CURRENT_GROUP, RECEIVE_CURRENT_GROUP_ADMINS, RECEIVE_CATEGORY_GROUPS, RECEIVE_GROUP_DISCUSSIONS } from './../actions/group_actions';


const _nullGroups = Object.freeze({
  groups: [],
  users: [],
  errors: [],
  currentGroup: {},
  currentGroupAdmins: [],
  categoryGroups: [],
  discussions: []
});

const GroupReducer = (state = _nullGroups , action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_GROUPS:
      const groups = action.groups;
      return Object.assign({}, state, { groups });
    case RECEIVE_CURRENT_GROUP:
      const currentGroup = action.group;
      return Object.assign({}, state, { currentGroup });
    case RECEIVE_CATEGORY_GROUPS:
      const categoryGroups = action.categoryGroups;
      return Object.assign({}, state, { categoryGroups });
    case RECEIVE_GROUP_USERS:
      const users = action.users;
      return Object.assign({}, state, { users });
    case RECEIVE_CURRENT_GROUP_ADMINS:
      const currentGroupAdmins = action.currentGroupAdmins;
      return Object.assign({}, state, { currentGroupAdmins });
    case RECEIVE_GROUP_DISCUSSIONS:
      const discussions = action.discussions;
      return Object.assign({}, state, { discussions });
    case RECEIVE_GROUP_ERRORS:
      const errors = action.errors;
      return Object.assign({}, state, { errors });
    default:
      return state;
  }
};

export default GroupReducer;
