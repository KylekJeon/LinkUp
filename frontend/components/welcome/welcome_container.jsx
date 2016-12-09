import { connect } from 'react-redux';
import Welcome from './welcome';
import { login, clearSessionErrors } from './../../actions/session_actions';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  errors: state.session.errors
});

const mapDispatchToProps = (dispatch) => ({
  login: user => dispatch(login(user)),
  clearSessionErrors: () => dispatch(clearSessionErrors())
});

export default connect(
  null,
  mapDispatchToProps
)(Welcome);
