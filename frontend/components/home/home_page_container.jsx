import { connect } from 'react-redux';
import HomePage from './home_page';
import { fetchGroups, fetchUserGroups } from './../../actions/group_actions';
import { fetchCurrentUserEvents, fetchEvents } from './../../actions/event_actions';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  currentUserEvents: state.events.currentUserEvents,
  allEvents: state.events.events
});

const mapDispatchToProps = (dispatch) => ({
  fetchUserGroups:(userId) => dispatch(fetchUserGroups(userId)),
  fetchGroups: () => dispatch(fetchGroups()),
  fetchEvents: () => dispatch(fetchEvents()),
  fetchCurrentUserEvents: (userId) => dispatch(fetchCurrentUserEvents(userId)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HomePage);
