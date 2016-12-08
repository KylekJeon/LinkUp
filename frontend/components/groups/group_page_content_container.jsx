import { connect } from 'react-redux';
import GroupPageContent from './group_page_content';
import { fetchUsersForGroup, addUserToGroup, fetchGroup } from '../../actions/group_actions';


const mapStateToProps = (state, ownProps) => ({
  group: state.groups.currentGroup
});


export default connect(
  mapStateToProps
)(GroupPageContent);
