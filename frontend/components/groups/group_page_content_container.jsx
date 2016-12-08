import { connect } from 'react-redux';
import GroupPageContent from './group_page_content';
import { fetchUsersForGroup, addUserToGroup, fetchGroup } from '../../actions/group_actions';
import { fetchCurrentGroupEvents } from './../../actions/event_actions';


const mapStateToProps = (state, ownProps) => {
  return({
    currentGroup: state.groups.currentGroup,
    currentGroupEvents: state.events.currentGroupEvents,
    currentGroupId: ownProps.params.groupId
  });
};

const mapDispatchToProps = (dispatch) => ({
  fetchCurrentGroupEvents: (groupId) => dispatch(fetchCurrentGroupEvents(groupId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(GroupPageContent);
