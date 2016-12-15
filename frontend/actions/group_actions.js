import * as APIUtil from './../util/group_api_util';

// constants
export const RECEIVE_GROUPS = "RECEIVE_GROUPS";
export const RECEIVE_GROUP_ERRORS = "RECEIVE_GROUP_ERRORS";
export const RECEIVE_GROUP_USERS = "RECEIVE_GROUP_USERS";
export const RECEIVE_CURRENT_GROUP = "RECEIVE_CURRENT_GROUP";
export const RECEIVE_CURRENT_GROUP_ADMINS = "RECEIVE_CURRENT_GROUP_ADMINS";
export const RECEIVE_CATEGORY_GROUPS = "RECEIVE_CATEGORY_GROUPS";
export const RECEIVE_GROUP_DISCUSSIONS = "RECEIVE_GROUP_DISCUSSIONS";

// action creators
export const receiveGroupDiscussions = (discussions) => ({
  type: RECEIVE_GROUP_DISCUSSIONS,
  discussions
});

export const receiveGroups = (groups) => ({
  type: RECEIVE_GROUPS,
  groups
});

export const receiveCategoryGroups = (categoryGroups) => ({
  type: RECEIVE_CATEGORY_GROUPS,
  categoryGroups
});

export const receiveGroupErrors = (errors) => {
  return {
    type: RECEIVE_GROUP_ERRORS,
    errors
  };
};

export const receiveGroupUsers = (users) => ({
  type: RECEIVE_GROUP_USERS,
  users
});

export const receiveCurrentGroup = (group) => ({
  type: RECEIVE_CURRENT_GROUP,
  group
});

export const receiveCurrentGroupAdmins = (currentGroupAdmins) => ({
  type: RECEIVE_CURRENT_GROUP_ADMINS,
  currentGroupAdmins
});


// thunk creators
export function fetchGroup(groupId) {
  return (dispatch) => {
    return APIUtil.fetchGroup(groupId).then(
      group => dispatch(receiveCurrentGroup(group))
    );
  };
}

export function fetchGroups(filter) {
  return (dispatch) => {
    return APIUtil.fetchGroups(filter).then(
      groups => dispatch(receiveGroups(groups)),
      err => dispatch(receiveGroupErrors(err))
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
      users => dispatch(receiveGroupUsers(users)),
      errors => dispatch(receiveGroupErrors(errors.responseJSON))
    );
  };
}

export function removeUserFromGroup(groupId) {
  return (dispatch) => {
    return APIUtil.removeUserFromGroup(groupId).then(
      users => dispatch(receiveGroupUsers(users)),
      err => dispatch(receiveGroupErrors(err.responseJSON))
    );
  };
}

export function createGroup(group) {
  return (dispatch) => {
    return APIUtil.createGroup(group).then(
      group => dispatch(receiveCurrentGroup(group)),
      err => dispatch(receiveGroupErrors(err.responseJSON))
    );
  };
}

export function fetchCurrentGroupAdmins(groupId) {
  return (dispatch) => {
    return APIUtil.fetchCurrentGroupAdmins(groupId).then(
      users => dispatch(receiveCurrentGroupAdmins(users)),
      err => dispatch(receiveGroupErrors(err.responseJSON))
    );
  };
}

export function makeUserGroupAdmin(userId, groupId) {
  return (dispatch) => {
    return APIUtil.makeUserGroupAdmin(userId, groupId).then(
      users => dispatch(receiveCurrentGroupAdmins(users)),
      err => dispatch(receiveGroupErrors(err.responseJSON))
    );
  };
}

export function deleteAdminFromGroup(groupId){
  return (dispatch) => {
    return APIUtil.deleteAdminFromGroup(groupId).then(
      users => dispatch(receiveCurrentGroupAdmins(users)),
      err => dispatch(receiveGroupErrors(err.responseJSON))
    );
  };
}

export function fetchCategoryGroups(category) {
  return (dispatch) => {
    return APIUtil.fetchCategoryGroups(category).then(
      groups => dispatch(receiveCategoryGroups(groups))
    );
  };
}

export function editGroup(groupId, group) {
  return (dispatch) => {
    return APIUtil.editGroup(groupId, group).then(
      group => dispatch(receiveCurrentGroup(group)),
      err => dispatch(receiveGroupErrors(err.responseJSON))
    );
  };
}

export function fetchGroupDiscussions(groupId) {
  return (dispatch) => {
    return APIUtil.fetchGroupDiscussions(groupId).then(
      discussions => dispatch(receiveGroupDiscussions(discussions)),
      err => dispatch(receiveGroupErrors(err.responseJSON))
    );
  };
}

export function createDiscussion(groupId, discussion) {
  return (dispatch) => {
    return APIUtil.createDiscussion(groupId, discussion).then(
      discussions => dispatch(receiveGroupDiscussions(discussions)),
      err => dispatch(receiveGroupErrors(err.responseJSON))
    );
  };
}

export function createComment(discussionId, comment) {
  return (dispatch) => {
    return APIUtil.createComment(discussionId, comment).then(
      discussions => dispatch(receiveGroupDiscussions(discussions)),
      err => dispatch(receiveGroupErrors(err.responseJSON))
    );
  };
}
