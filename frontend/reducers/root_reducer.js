import { combineReducers } from 'redux';
import GroupReducer from './group_reducer';
import SessionReducer from './session_reducer';
import EventReducer from './event_reducer';

const rootReducer = combineReducers({
  session: SessionReducer,
  groups: GroupReducer,
  events: EventReducer
});

export default rootReducer;
