import { connect } from 'react-redux';
import HomePageEvents from './home_page_event';
import { fetchCurrentUserEvents, fetchEvents, fetchCurrentUserGroupEvents } from './../../actions/event_actions';
import { fetchUserGroups } from './../../actions/user_actions';

const mapStateToProps = (state) => {
  return({
    currentUser: state.session.currentUser,
    currentUserEvents: state.events.currentUserEvents,
    allEvents: state.events.events,
    currentUserGroupEvents: state.events.currentUserGroupEvents,
    loading: state.loading.loading
  });
};

const mapDispatchToProps = (dispatch) => ({
  fetchEvents: () => dispatch(fetchEvents()),
  fetchCurrentUserEvents: () => dispatch(fetchCurrentUserEvents()),
  fetchCurrentUserGroupEvents: () => dispatch(fetchCurrentUserGroupEvents())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HomePageEvents);
