import * as APIUtil from './../util/session_api_util';

// constants
export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const RECEIVE_SESSION_ERRORS = "RECEIVE_SESSION_ERRORS";
export const RECEIVE_CURRENT_USER_GROUPS = "RECEIVE_CURRENT_USER_GROUPS";

// action creators
export const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

export const receiveSessionErrors = (errors) => ({
  type: RECEIVE_SESSION_ERRORS,
  errors
});


// thunk creators

export function login(user) {
  return (dispatch) => {
    return APIUtil.login(user).then(
      user => dispatch(receiveCurrentUser(user)),
      err => dispatch(receiveSessionErrors(err.responseJSON))
    );
  };
}

export function signup(user) {
  return (dispatch) => {
    return APIUtil.signup(user).then(
      user => dispatch(receiveCurrentUser(user)),
      err => dispatch(receiveSessionErrors(err.responseJSON))
    );
  };
}

export function logout() {
  return (dispatch) => {
    return APIUtil.logout().then(user => dispatch(receiveCurrentUser(null)));
  };
}
