import { connect } from 'react-redux';
import Explore from './explore';
import { fetchCategoryGroups } from './../../actions/group_actions';


const mapStateToProps = (state) => ({
  categoryGroups: state.groups.categoryGroups
});

const mapDispatchToProps = (dispatch) => ({
  fetchCategoryGroups: (category) => dispatch(fetchCategoryGroups(category))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Explore);
