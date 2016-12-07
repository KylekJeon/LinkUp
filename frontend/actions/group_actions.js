import * as APIUtil from './../util/group_api_util';

// constants
export const RECEIVE_GROUPS = "RECEIVE_GROUPS";
export const RECEIVE_GROUP_ERRORS = "RECEIVE_GROUP_ERRORS";
export const RECEIVE_GROUP_USERS = "RECEIVE_GROUP_USERS";
export const RECEIVE_CURRENT_GROUP = "RECEIVE_CURRENT_GROUP";

// action creators
export const receiveGroups = (groups) => ({
  type: RECEIVE_GROUPS,
  groups
});

export const receiveGroupErrors = (errors) => ({
  type: RECEIVE_GROUP_ERRORS,
  errors
});

export const receiveGroupUsers = (users) => ({
  type: RECEIVE_GROUP_USERS,
  users
});

export const receiveCurrentGroup = (group) => ({
  type: RECEIVE_CURRENT_GROUP,
  group
});



// thunk creators
export function fetchGroup(groupId) {
  return (dispatch) => {
    return APIUtil.fetchGroup(groupId).then(
      group => dispatch(receiveCurrentGroup(group))
    );
  };
}

export function fetchGroups() {
  return (dispatch) => {
    return APIUtil.fetchGroups().then(
      groups => dispatch(receiveGroups(groups)),
      err => dispatch(receiveGroupErrors(err))
    );
  };
}

export function fetchUserGroups(userId) {
  return (dispatch) => {
    return APIUtil.fetchUserGroups(userId).then(
      (groups) => dispatch(receiveGroups(groups))
    );
  };
}

export function fetchUsersForGroup(groupId) {
  return (dispatch) => {
    return APIUtil.fetchUsersForGroup(groupId).then(
      users => dispatch(receiveGroupUsers(users))
    );
  };
}

export function addUserToGroup(groupId) {
  return (dispatch) => {
    return APIUtil.addUserToGroup(groupId).then(
      users => dispatch(receiveGroupUsers(users))
    );
  };
}
