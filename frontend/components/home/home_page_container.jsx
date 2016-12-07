import { connect } from 'react-redux';
import HomePage from './home_page';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser
});

export default connect(
  mapStateToProps
)(HomePage);
