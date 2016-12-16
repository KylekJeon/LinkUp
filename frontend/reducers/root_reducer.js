import { combineReducers } from 'redux';
import GroupReducer from './group_reducer';
import SessionReducer from './session_reducer';
import EventReducer from './event_reducer';
import UserReducer from './user_reducer';
import LoadingReducer from './loading_reducer';

const rootReducer = combineReducers({
  session: SessionReducer,
  groups: GroupReducer,
  events: EventReducer,
  users: UserReducer,
  loading: LoadingReducer
});

export default rootReducer;
