import { merge } from 'lodash';
import { RECEIVE_CURRENT_USER_EVENTS, RECEIVE_EVENTS, RECEIVE_CURRENT_GROUP_EVENTS, RECEIVE_EVENT_ERRORS, RECEIVE_CURRENT_USER_GROUP_EVENTS  } from './../actions/event_actions';


const _nullEvents = Object.freeze({
  events: [],
  currentUserEvents: [],
  currentGroupEvents: [],
  currentUserGroupEvents: [],
  errors: []
});

const EventReducer = (state = _nullEvents , action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_EVENTS:
      const events = action.events;
      return merge({}, _nullEvents, { events });
    case RECEIVE_CURRENT_GROUP_EVENTS:
      const currentGroupEvents = action.currentGroupEvents;
      return merge({}, _nullEvents, { currentGroupEvents });
    case RECEIVE_CURRENT_USER_EVENTS:
      const currentUserEvents = action.currentUserEvents;
      return merge({}, _nullEvents, { currentUserEvents });
    case RECEIVE_CURRENT_USER_GROUP_EVENTS:
      const currentUserGroupEvents = action.currentUserGroupEvents;
      return merge({}, _nullEvents, { currentUserGroupEvents });
    case RECEIVE_EVENT_ERRORS:
      const errors = action.errors;
      return merge({}, _nullEvents, { errors });
    default:
      return state;
  }
};

export default EventReducer;
