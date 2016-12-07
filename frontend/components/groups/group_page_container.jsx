import { connect } from 'react-redux';
import GroupPage from './group_page';
import { selectGroup } from '../../reducers/selectors';
import { addUserToGroup } from '../../util/group_api_util';


const mapStateToProps = (state, ownProps) => {
  const group = selectGroup(state.groups.groups, ownProps.params.groupId);
  return ({
    group
  });
};

const mapDispatchToProps = (dispatch) => ({
  addUserToGroup
});


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GroupPage);
