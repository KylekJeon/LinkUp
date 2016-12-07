import * as APIUtil from './../util/group_api_util';

// constants
export const RECEIVE_GROUPS = "RECEIVE_GROUPS";
export const RECEIVE_GROUP_ERRORS = "RECEIVE_GROUP_ERRORS";


// action creators
export const receiveGroups = (groups) => ({
  type: RECEIVE_GROUPS,
  groups
});

export const receiveGroupErrors = (errors) => ({
  type: RECEIVE_GROUP_ERRORS,
  errors
});

// thunk creators

export function fetchGroups() {
  return (dispatch) => {
    return APIUtil.fetchGroups().then(
      groups => dispatch(receiveGroups(groups)),
      err => dispatch(receiveGroupErrors(err))
    );
  };
}
