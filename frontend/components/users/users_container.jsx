import { connect } from 'react-redux';
import Users from './users';
import { updateUserProfilePhoto } from './../../actions/user_actions';
import { fetchGroups } from './../../actions/group_actions';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  currentUserImage: state.session.currentUser.image_url,
  currentUserGroups: state.groups.groups
});

const mapDispatchToProps = (dispatch) => ({
  updateUserProfilePhoto: (id, formData) => dispatch(updateUserProfilePhoto(id, formData)),
  fetchGroups: (filter) => dispatch(fetchGroups(filter)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Users);
