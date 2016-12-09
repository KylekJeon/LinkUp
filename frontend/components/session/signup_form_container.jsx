import { connect } from 'react-redux';
import SignUpForm from './signup_form';
import { signup, clearSessionErrors } from './../../actions/session_actions';

const mapStateToProps = (state) => ({
  loggedIn: Boolean(state.session.currentUser),
  errors: state.session.errors
});

const mapDispatchToProps = (dispatch) => ({
  signup: user => dispatch(signup(user)),
  clearError: () => dispatch(clearSessionErrors())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SignUpForm);
