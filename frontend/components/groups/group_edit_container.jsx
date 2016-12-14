import { connect } from 'react-redux';
import GroupEdit from './group_edit';
import { editGroup } from './../../actions/group_actions';


const mapStateToProps = (state) => ({
  errors: state.groups.errors,
  currentGroup: state.groups.currentGroup
});

const mapDispatchToProps = (dispatch) => ({
  editGroup: (groupId, group) => dispatch(editGroup(groupId, group))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GroupEdit);
