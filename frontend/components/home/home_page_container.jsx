import { connect } from 'react-redux';
import HomePage from './home_page';
import { fetchGroups } from './../../actions/group_actions';
import { fetchCurrentUserEvents, fetchEvents } from './../../actions/event_actions';
import { fetchUserGroups } from './../../actions/user_actions';

const mapStateToProps = (state) => {
  return({
    currentUser: state.session.currentUser,
    currentUserEvents: state.events.currentUserEvents,
    allEvents: state.events.events,
    currentUserGroups: state.users.userGroups
  });
};

const mapDispatchToProps = (dispatch) => ({
  fetchUserGroups:(userId) => dispatch(fetchUserGroups(userId)),
  fetchGroups: () => dispatch(fetchGroups()),
  fetchEvents: () => dispatch(fetchEvents()),
  fetchCurrentUserEvents: () => dispatch(fetchCurrentUserEvents()),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HomePage);
