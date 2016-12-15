import { connect } from 'react-redux';
import Forum from './forum';
import { fetchGroup, fetchGroupDiscussions, createDiscussion, createComment } from '../../actions/group_actions';


const mapStateToProps = (state) => {
  return({
    currentGroup: state.groups.currentGroup,
    discussions: state.groups.discussions,
    errors: state.groups.errors
  });
};

const mapDispatchToProps = (dispatch) => ({
  fetchGroup: (groupId) => dispatch(fetchGroup(groupId)),
  fetchGroupDiscussions: (groupId) => dispatch(fetchGroupDiscussions(groupId)),
  createDiscussion: (groupId, discussion) => dispatch(createDiscussion(groupId, discussion)),
  createComment: (discussionId, comment) => dispatch(createComment(discussionId, comment))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Forum);
