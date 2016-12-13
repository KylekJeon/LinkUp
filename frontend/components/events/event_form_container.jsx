import { connect } from 'react-redux';
import EventForm from './event_form';
import { createEvent } from './../../actions/event_actions';


const mapStateToProps = (state) => ({
  errors: state.events.errors,
  currentGroup: state.groups.currentGroup,
  currentUserEvents: state.users.currentUserEvents,
});

const mapDispatchToProps = (dispatch) => ({
  createEvent: (event, groupId) => dispatch(createEvent(event, groupId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(EventForm);
