import * as APIUtil from './../util/users_api_util';

export const RECEIVE_USER_GROUPS = "RECEIVE_USER_GROUPS";
export const RECEIVE_USER_ERRORS = "RECEIVE_USER_ERRORS";

export const receiveUserGroups = (userGroups) => ({
  type: RECEIVE_USER_GROUPS,
  userGroups
});

export const receiveUserErrors = (errors) => ({
  type: RECEIVE_USER_ERRORS,
  errors
});



export function fetchUserGroups(userId) {
  return (dispatch) => {
    return APIUtil.fetchUserGroups(userId).then(
      userGroups => dispatch(receiveUserGroups(userGroups))
    );
  };
}
