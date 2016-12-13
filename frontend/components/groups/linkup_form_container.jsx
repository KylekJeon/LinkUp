import { connect } from 'react-redux';
import linkUpForm from './linkup_form';
import { createGroup } from './../../actions/group_actions';


const mapStateToProps = (state) => ({
  errors: state.groups.errors,
  currentGroup: state.groups.currentGroup
});

const mapDispatchToProps = (dispatch) => ({
  createGroup: (group) => dispatch(createGroup(group))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(linkUpForm);
