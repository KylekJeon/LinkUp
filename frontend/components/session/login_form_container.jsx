import { connect } from 'react-redux';
import LoginForm from './login_form';
import { login, clearSessionErrors } from './../../actions/session_actions';

const mapStateToProps = (state) => ({
  loggedIn: Boolean(state.session.currentUser),
  errors: state.session.errors
});

const mapDispatchToProps = (dispatch) => ({
  login: user => dispatch(login(user)),
  clearError: () => dispatch(clearSessionErrors())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(LoginForm);
