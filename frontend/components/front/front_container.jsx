import { connect } from 'react-redux';
import Front from './front';
import { logout } from './../../actions/session_actions';
import { fetchGroups } from './../../actions/group_actions';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser
});


const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
  fetchGroups: () => dispatch(fetchGroups())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Front);
