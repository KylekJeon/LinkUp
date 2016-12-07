import { connect } from 'react-redux';
import GroupPage from './group_page';
import { selectGroup } from '../../reducers/selectors';
import { addUserToGroup } from '../../actions/group_actions';


const mapStateToProps = (state, ownProps) => {
  const group = selectGroup(state.groups.groups, ownProps.params.groupId);
  return ({
    group
  });
};

const mapDispatchToProps = (dispatch) => ({
  addUserToGroup: (groupId) => dispatch(addUserToGroup(groupId))
});


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GroupPage);
