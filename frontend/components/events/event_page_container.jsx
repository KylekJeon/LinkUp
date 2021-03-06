import { connect } from 'react-redux';
import EventPage from './event_page';
import { fetchCurrentEvent, addUserToEvent, fetchCurrentEventUsers, removeUserFromEvent } from './../../actions/event_actions';
import { selectUserIds } from './../../reducers/selectors';
import { fetchCurrentGroupAdmins } from '../../actions/group_actions';

const mapStateToProps = (state, ownProps) => ({
  currentEvent: state.events.currentEvent,
  currentEventId: ownProps.params.eventId,
  currentEventUsers: state.events.currentEventUsers,
  errors: state.events.errors,
  currentUser: state.session.currentUser,
  currentGroupAdminIds: selectUserIds(state.groups.currentGroupAdmins)
});

const mapDispatchToProps = (dispatch) => ({
  fetchCurrentEvent: (eventId) => dispatch(fetchCurrentEvent(eventId)),
  addUserToEvent: (eventId) => dispatch(addUserToEvent(eventId)),
  fetchCurrentEventUsers: (eventId) => dispatch(fetchCurrentEventUsers(eventId)),
  removeUserFromEvent: (eventId) => dispatch(removeUserFromEvent(eventId)),
  fetchCurrentGroupAdmins: (groupId) => dispatch(fetchCurrentGroupAdmins(groupId)),
});


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(EventPage);
