import { merge } from 'lodash';
import { RECEIVE_CURRENT_USER_EVENTS, RECEIVE_EVENTS, RECEIVE_CURRENT_GROUP_EVENTS, RECEIVE_EVENT_ERRORS, RECEIVE_CURRENT_USER_GROUP_EVENTS, RECEIVE_CURRENT_EVENT, RECEIVE_CURRENT_EVENT_USERS  } from './../actions/event_actions';


const _nullEvents = Object.freeze({
  events: [],
  currentUserEvents: [],
  currentGroupEvents: [],
  currentUserGroupEvents: [],
  errors: [],
  currentEvent: {},
  currentEventUsers: []
});

const EventReducer = (state = _nullEvents , action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_EVENTS:
      const events = action.events;
      return Object.assign({}, _nullEvents, { events });
    case RECEIVE_CURRENT_GROUP_EVENTS:
      const currentGroupEvents = action.currentGroupEvents;
      return Object.assign({}, _nullEvents, { currentGroupEvents });
    case RECEIVE_CURRENT_USER_EVENTS:
      const currentUserEvents = action.currentUserEvents;
      return Object.assign({}, _nullEvents, { currentUserEvents });
    case RECEIVE_CURRENT_USER_GROUP_EVENTS:
      const currentUserGroupEvents = action.currentUserGroupEvents;
      return Object.assign({}, _nullEvents, { currentUserGroupEvents });
    case RECEIVE_CURRENT_EVENT:
      const currentEvent = action.currentEvent;
      return Object.assign({}, _nullEvents, { currentEvent });
    case RECEIVE_CURRENT_EVENT_USERS:
      const currentEventUsers = action.currentEventUsers;
      return Object.assign({}, state, { currentEventUsers });
    case RECEIVE_EVENT_ERRORS:
      const errors = action.errors;
      return Object.assign({}, state, { errors });
    default:
      return state;
  }
};

export default EventReducer;
