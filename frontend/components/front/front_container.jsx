import { connect } from 'react-redux';
import Front from './front';
import { logout } from './../../actions/session_actions';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser
});


const mapDispatchToProps = (dispatch) => {
  return { logout: () => dispatch(logout()) };
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Front);
