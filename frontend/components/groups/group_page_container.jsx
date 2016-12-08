import { connect } from 'react-redux';
import GroupPage from './group_page';
import { fetchUsersForGroup, addUserToGroup, fetchGroup } from '../../actions/group_actions';


const mapStateToProps = (state, ownProps) => ({
  users: state.groups.users,
  group: state.groups.currentGroup
});

const mapDispatchToProps = (dispatch) => ({
  addUserToGroup: (groupId) => dispatch(addUserToGroup(groupId)),
  fetchUsersForGroup: (groupId) => dispatch(fetchUsersForGroup(groupId)),
  fetchGroup: (groupId) => dispatch(fetchGroup(groupId))
});


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GroupPage);
