import { merge } from 'lodash';
import { RECEIVE_CURRENT_USER_EVENTS, RECEIVE_EVENTS, RECEIVE_CURRENT_GROUP_EVENTS, RECEIVE_EVENT_ERRORS  } from './../actions/event_actions';


const _nullEvents = Object.freeze({
  events: [],
  currentUserEvents: [],
  currentGroupEvents: [],
  errors: []
});

const EventReducer = (state = _nullEvents , action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_EVENTS:
      const events = action.events;
      return merge({}, state, { events });
    case RECEIVE_CURRENT_GROUP_EVENTS:
      const currentGroupEvents = action.currentGroupEvents;
      return merge({}, state, { currentGroupEvents });
    case RECEIVE_CURRENT_USER_EVENTS:
      const currentUserEvents = action.currentUserEvents;
      return merge({}, state, { currentUserEvents });
    case RECEIVE_EVENT_ERRORS:
      const errors = action.errors;
      return merge({}, state, { errors });
    default:
      return state;
  }
};

export default EventReducer;
