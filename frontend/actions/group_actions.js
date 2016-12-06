import * as APIUtil from './../util/session_api_util';

// constants
export const RECEIVE_GROUPS = "RECEIVE_GROUPS";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";


// action creators
export const receiveGroups = (groups) => ({
  type: RECEIVE_GROUPS,
  groups
});

export const receiveErrors = (errors) => ({
  type: RECEIVE_ERRORS,
  errors
});

// thunk creators

export function fetchGroups(groups) {
  return (dispatch) => {
    
  };
}

export function login(user) {
  return (dispatch) => {
    return APIUtil.login(user).then(
      user => dispatch(receiveCurrentUser(user)),
      err => dispatch(receiveErrors(err.responseJSON))
    );
  };
}

export function signup(user) {
  return (dispatch) => {
    return APIUtil.signup(user).then(
      user => dispatch(receiveCurrentUser(user)),
      err => dispatch(receiveErrors(err.responseJSON))
    );
  };
}

export function logout() {
  return (dispatch) => {
    return APIUtil.logout().then(user => dispatch(receiveCurrentUser(null)));
  };
}
