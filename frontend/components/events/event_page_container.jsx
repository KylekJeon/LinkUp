import { connect } from 'react-redux';
import EventPage from './event_page';
import { fetchCurrentEvent, addUserToEvent, fetchCurrentEventUsers } from './../../actions/event_actions';


const mapStateToProps = (state, ownProps) => ({
  currentEvent: state.events.currentEvent,
  currentEventId: ownProps.params.eventId,
  currentEventUsers: state.events.currentEventUsers
});

const mapDispatchToProps = (dispatch) => ({
  fetchCurrentEvent: (eventId) => dispatch(fetchCurrentEvent(eventId)),
  addUserToEvent: (eventId) => dispatch(addUserToEvent(eventId)),
  fetchCurrentEventUsers: (eventId) => dispatch(fetchCurrentEventUsers(eventId))
});


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(EventPage);
