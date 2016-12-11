import { connect } from 'react-redux';
import HomePage from './home_page';
import { fetchCurrentUserEvents, fetchEvents, fetchCurrentUserGroupEvents } from './../../actions/event_actions';
import { fetchUserGroups } from './../../actions/user_actions';

const mapStateToProps = (state) => {
  return({
    currentUser: state.session.currentUser,
    currentUserEvents: state.events.currentUserEvents,
    allEvents: state.events.events,
    currentUserGroupEvents: state.events.currentUserGroupEvents
  });
};

const mapDispatchToProps = (dispatch) => ({
  fetchEvents: () => dispatch(fetchEvents()),
  fetchCurrentUserEvents: () => dispatch(fetchCurrentUserEvents()),
  fetchCurrentUserGroupEvents: () => dispatch(fetchCurrentUserGroupEvents()),
  fetchGroups: (filter) => dispatch(fetchGroups(filter)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HomePage);
