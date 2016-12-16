import { REQUEST_EVENTS, RECEIVE_EVENTS, RECEIVE_CURRENT_USER_EVENTS, RECEIVE_CURRENT_USER_GROUP_EVENTS, RECEIVE_EVENT_ERRORS } from '../actions/event_actions';

const initialState = {
  loading: false
};

export default (state = initialState, action) => {
  switch(action.type){
    case RECEIVE_EVENTS:
    case RECEIVE_CURRENT_USER_EVENTS:
    case RECEIVE_CURRENT_USER_GROUP_EVENTS:
    case RECEIVE_EVENT_ERRORS:
      return initialState;
    case REQUEST_EVENTS:
      return Object.assign({}, state, { loading: true });
    default:
      return state;
  }
};
