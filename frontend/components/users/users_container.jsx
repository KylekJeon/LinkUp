import { connect } from 'react-redux';
import Users from './users';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser
});

export default connect(
  mapStateToProps
)(Users);
