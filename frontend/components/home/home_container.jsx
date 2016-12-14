import { connect } from 'react-redux';
import Home from './home';
import { logout } from './../../actions/session_actions';
import { fetchUserGroups } from './../../actions/user_actions';
const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  currentUserGroups: state.users.userGroups,
});


const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
  fetchUserGroups: (userId) => dispatch(fetchUserGroups(userId)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Home);
