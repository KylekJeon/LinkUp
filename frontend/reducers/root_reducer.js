import { combineReducers } from 'redux';
import GroupReducer from './group_reducer';
import SessionReducer from './session_reducer';

const rootReducer = combineReducers({
  session: SessionReducer,
  groups: GroupReducer
});

export default rootReducer;
