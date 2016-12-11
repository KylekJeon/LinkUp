import { connect } from 'react-redux';
import HomePageSearch from './home_page_search';
import { fetchGroups } from './../../actions/group_actions';

const mapStateToProps = (state) => {
  return({
    currentUser: state.session.currentUser,
    SearchGroups: state.groups.groups
  });
};

const mapDispatchToProps = (dispatch) => ({
  fetchGroups: (filter) => dispatch(fetchGroups(filter)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HomePageSearch);
