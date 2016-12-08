import * as APIUtil from './../util/event_api_util';

// constants
export const RECEIVE_CURRENT_USER_EVENTS = "RECEIVE_CURRENT_USER_EVENTS";
export const RECEIVE_EVENTS = "RECEIVE_EVENTS";
export const RECEIVE_CURRENT_GROUP_EVENTS = "RECEIVE_CURRENT_GROUP_EVENTS";
export const RECEIVE_EVENT_ERRORS = "RECEIVE_EVENT_ERRORS";

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

export const receiveEventErrors = (errors) => ({
  type: RECEIVE_EVENT_ERRORS,
  errors
});

// thunk creators
export function fetchEvents() {
  return (dispatch) => {
    return APIUtil.fetchEvents().then(
      events => dispatch(receiveEvents(events))
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
