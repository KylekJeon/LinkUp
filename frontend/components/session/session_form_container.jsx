import { connect } from 'react-redux';
import SessionForm from './session_form';
import { login, signup } from './../../actions/session_actions';

const mapStateToProps = (state) => ({
  loggedIn: Boolean(state.session.currentUser),
  errors: state.session.errors
});

const mapDispatchToProps = (dispatch, { location }) => {
  const formType = location.pathname.slice(9);
  const processForm = (formType === 'login') ? login : signup;

  return({
    formType,
    processForm: user => dispatch(processForm(user))
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm);
