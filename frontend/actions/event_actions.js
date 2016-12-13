import * as APIUtil from './../util/event_api_util';

// constants
export const RECEIVE_CURRENT_USER_EVENTS = "RECEIVE_CURRENT_USER_EVENTS";
export const RECEIVE_EVENTS = "RECEIVE_EVENTS";
export const RECEIVE_CURRENT_GROUP_EVENTS = "RECEIVE_CURRENT_GROUP_EVENTS";
export const RECEIVE_EVENT_ERRORS = "RECEIVE_EVENT_ERRORS";
export const RECEIVE_CURRENT_USER_GROUP_EVENTS = "RECEIVE_CURRENT_USER_GROUP_EVENTS";
export const RECEIVE_CURRENT_EVENT = "RECEIVE_CURRENT_EVENT";
export const RECEIVE_CURRENT_EVENT_USERS = "RECEIVE_CURRENT_EVENT_USERS";
export const RECEIVE_CURRENT_USER_NEXT_EVENT = "RECEIVE_CURRENT_USER_NEXT_EVENT";

// action creators
export const receiveEvents = (events) => ({
  type: RECEIVE_EVENTS,
  events
});

export const receiveCurrentUserEvents = (events) => ({
  type: RECEIVE_CURRENT_USER_EVENTS,
  currentUserEvents: events
});

export const receiveCurrentGroupEvents = (events) => ({
  type: RECEIVE_CURRENT_GROUP_EVENTS,
  currentGroupEvents: events
});

export const receiveCurrentUserGroupEvents = (events) => ({
  type: RECEIVE_CURRENT_USER_GROUP_EVENTS,
  currentUserGroupEvents: events
});

export const receiveEventErrors = (errors) => ({
  type: RECEIVE_EVENT_ERRORS,
  errors
});

export const receiveCurrentEvent = (currentEvent) => ({
  type: RECEIVE_CURRENT_EVENT,
  currentEvent
});

export const receiveCurrentEventUsers = (currentEventUsers) => ({
  type: RECEIVE_CURRENT_EVENT_USERS,
  currentEventUsers
});

export const receiveCurrentUserNextEvent = (currentUserNextEvent) => ({
  type: RECEIVE_CURRENT_USER_NEXT_EVENT,
  currentUserNextEvent
});

// thunk creators
export function fetchEvents() {
  return (dispatch) => {
    return APIUtil.fetchEvents().then(
      events => dispatch(receiveEvents(events))
    );
  };
}

export function fetchCurrentEvent(eventId) {
  return (dispatch) => {
    return APIUtil.fetchCurrentEvent(eventId).then(
      currentEvent => dispatch(receiveCurrentEvent(currentEvent))
    );
  };
}

export function fetchCurrentUserEvents() {
  return(dispatch) => {
    return APIUtil.fetchCurrentUserEvents().then(
      events => dispatch(receiveCurrentUserEvents(events))
    );
  };
}

export function fetchCurrentGroupEvents(groupId) {
  return (dispatch) => {
    return APIUtil.fetchCurrentGroupEvents(groupId).then(
      events => dispatch(receiveCurrentGroupEvents(events))
    );
  };
}

export function fetchCurrentUserGroupEvents() {
  return (dispatch) => {
    return APIUtil.fetchCurrentUserGroupEvents().then(
      events => dispatch(receiveCurrentUserGroupEvents(events))
    );
  };
}

export function fetchCurrentEventUsers(eventId) {
  return (dispatch) => {
    return APIUtil.fetchCurrentEventUsers(eventId).then(
      users => dispatch(receiveCurrentEventUsers(users))
    );
  };
}

export function addUserToEvent(eventId) {
  return (dispatch) => {
    return APIUtil.addUserToEvent(eventId).then(
      users => dispatch(receiveCurrentEventUsers(users)),
      errors => dispatch(receiveEventErrors(errors.responseJSON))
    );
  };
}

export function removeUserFromEvent(eventId) {
  return dispatch => {
    return APIUtil.removeUserFromEvent(eventId).then(
      users => dispatch(receiveCurrentEventUsers(users)),
      errors => dispatch(receiveEventErrors(errors.responseJson))
    );
  };
}

export function fetchCurrentUserNextEvent() {
  return dispatch => {
    return APIUtil.fetchCurrentUserNExtEvent().then(
      event => dispatch(receiveCurrentUserNextEvent(event)),
      errors => dispatch(receiveEventErrors(errors.responseJSON))
    );
  };
}

export function createEvent(event, groupId) {
  return dispatch => {
    return APIUtil.createEvent(event, groupId).then(
      events => dispatch(receiveCurrentUserEvents(events)),
      err => dispatch(receiveEventErrors(err.responseJSON))
    );
  };
}
