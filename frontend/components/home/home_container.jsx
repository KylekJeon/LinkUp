import { connect } from 'react-redux';
import Home from './home';
import { logout } from './../../actions/session_actions';
import { fetchGroups, fetchUserGroups } from './../../actions/group_actions';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser
});


const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
  fetchGroups: () => dispatch(fetchGroups()),
  fetchUserGroups: (id) => dispatch(fetchUserGroups(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Home);
