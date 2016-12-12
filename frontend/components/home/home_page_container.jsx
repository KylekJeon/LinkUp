import { connect } from 'react-redux';
import HomePage from './home_page';
import { fetchCurrentUserEvents, fetchEvents, fetchCurrentUserGroupEvents } from './../../actions/event_actions';
import { fetchUserGroups, fetchCurrentUserNextEvent } from './../../actions/user_actions';

const mapStateToProps = (state) => {
  return({
    currentUser: state.session.currentUser,
    currentUserEvents: state.events.currentUserEvents,
    allEvents: state.events.events,
    currentUserGroupEvents: state.events.currentUserGroupEvents,
    currentUserNextEvent: state.users.currentUserNextEvent
  });
};

const mapDispatchToProps = (dispatch) => ({
  fetchEvents: () => dispatch(fetchEvents()),
  fetchCurrentUserEvents: () => dispatch(fetchCurrentUserEvents()),
  fetchCurrentUserGroupEvents: () => dispatch(fetchCurrentUserGroupEvents()),
  fetchGroups: (filter) => dispatch(fetchGroups(filter)),
  fetchCurrentUserNextEvent: () => dispatch(fetchCurrentUserNextEvent())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HomePage);
