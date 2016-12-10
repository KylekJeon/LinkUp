import { connect } from 'react-redux';
import Calendar from './calendar';
import { fetchUsersForGroup, addUserToGroup, fetchGroup } from '../../actions/group_actions';
import { fetchCurrentGroupEvents } from './../../actions/event_actions';


const mapStateToProps = (state, ownProps) => ({
  currentGroup: state.groups.currentGroup,
  currentGroupEvents: state.events.currentGroupEvents,
  currentGroupId: ownProps.params.groupId
});

const mapDispatchToProps = (dispatch) => ({
  fetchCurrentGroupEvents: (groupId) => dispatch(fetchCurrentGroupEvents(groupId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Calendar);
