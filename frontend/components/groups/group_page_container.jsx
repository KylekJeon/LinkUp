import { connect } from 'react-redux';
import GroupPage from './group_page';
import { fetchUsersForGroup, addUserToGroup, fetchGroup, fetchCurrentGroupAdmins, removeUserFromGroup, makeUserGroupAdmin, deleteAdminFromGroup } from '../../actions/group_actions';
import { selectUserIds } from './../../reducers/selectors';

const mapStateToProps = (state, ownProps) => ({
  users: state.groups.users,
  group: state.groups.currentGroup,
  errors: state.groups.errors,
  currentUser: state.session.currentUser,
  currentGroupAdmins: state.groups.currentGroupAdmins,
  currentGroupAdminIds: selectUserIds(state.groups.currentGroupAdmins),
});

const mapDispatchToProps = (dispatch) => ({
  addUserToGroup: (groupId) => dispatch(addUserToGroup(groupId)),
  fetchUsersForGroup: (groupId) => dispatch(fetchUsersForGroup(groupId)),
  fetchGroup: (groupId) => dispatch(fetchGroup(groupId)),
  fetchCurrentGroupAdmins: (groupId) => dispatch(fetchCurrentGroupAdmins(groupId)),
  removeUserFromGroup: (groupId) => dispatch(removeUserFromGroup(groupId)),
  makeUserGroupAdmin: (userId, groupId) => dispatch(makeUserGroupAdmin(userId, groupId)),
  deleteAdminFromGroup: (groupId) => dispatch(deleteAdminFromGroup(groupId))
});


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GroupPage);
