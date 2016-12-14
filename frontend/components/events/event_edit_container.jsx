import { connect } from 'react-redux';
import EventEdit from './event_edit';
import { editEvent, fetchCurrentEvent } from './../../actions/event_actions';


const mapStateToProps = (state) => ({
  errors: state.events.errors,
  currentGroup: state.groups.currentGroup,
  currentUserEvents: state.users.currentUserEvents,
  currentEvent: state.events.currentEvent
});

const mapDispatchToProps = (dispatch) => ({
  editEvent: (event, eventId) => dispatch(editEvent(event, eventId)),
  fetchCurrentEvent: (eventId) => dispatch(fetchCurrentEvent(eventId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(EventEdit);
