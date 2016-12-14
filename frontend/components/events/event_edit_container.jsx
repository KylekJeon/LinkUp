import { connect } from 'react-redux';
import EventEdit from './event_edit';
import { editEvent } from './../../actions/event_actions';


const mapStateToProps = (state) => ({
  errors: state.events.errors,
  currentGroup: state.groups.currentGroup,
  currentUserEvents: state.users.currentUserEvents,
});

const mapDispatchToProps = (dispatch) => ({
  editEvent: (event, eventId) => dispatch(editEvent(event, eventId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(EventEdit);
