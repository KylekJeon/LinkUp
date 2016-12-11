import { connect } from 'react-redux';
import HomePageSearch from './home_page_search';
import { fetchGroups } from './../../actions/group_actions';
import { fetchCurrentUserEvents, fetchEvents, fetchCurrentUserGroupEvents } from './../../actions/event_actions';
import { fetchUserGroups } from './../../actions/user_actions';

const mapStateToProps = (state) => {
  return({
    currentUser: state.session.currentUser,
    HomePageGroups: state.groups.groups
  });
};

const mapDispatchToProps = (dispatch) => ({
  fetchGroups: (filter) => dispatch(fetchGroups(filter)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HomePageSearch);
