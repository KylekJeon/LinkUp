import { connect } from 'react-redux';
import Users from './users';
import { updateUserProfilePhoto } from './../../actions/user_actions';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  currentUserImage: state.session.currentUser.image_url
});

const mapDispatchToProps = (dispatch) => ({
  updateUserProfilePhoto: (id, formData) => dispatch(updateUserProfilePhoto(id, formData))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Users);
