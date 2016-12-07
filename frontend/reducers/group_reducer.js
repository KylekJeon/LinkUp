import { merge } from 'lodash';
import { RECEIVE_GROUPS, RECEIVE_GROUP_ERRORS } from './../actions/group_actions';


const _nullGroups = Object.freeze({
  groups: {},
  errors: []
});

const GroupReducer = (state = _nullGroups , action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_GROUPS:
      const groups = action.groups;
      return merge({}, _nullGroups, { groups });
    case RECEIVE_GROUP_ERRORS:
      const errors = action.errors;
      return merge({}, _nullGroups, { errors });
    default:
      return state;
  }
};

export default GroupReducer;
