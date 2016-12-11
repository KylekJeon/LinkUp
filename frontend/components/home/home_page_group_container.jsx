import { connect } from 'react-redux';
import HomePageGroups from './home_page_group';
import { fetchGroups } from './../../actions/group_actions';
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
  fetchGroups: () => dispatch(fetchGroups()),
  fetchEvents: () => dispatch(fetchEvents()),
  fetchCurrentUserEvents: () => dispatch(fetchCurrentUserEvents()),
  fetchCurrentUserGroupEvents: () => dispatch(fetchCurrentUserGroupEvents())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HomePageGroups);
