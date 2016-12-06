import { connect } from 'react-redux';
import FrontPage from './front_page';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser
});

export default connect(
  mapStateToProps
)(FrontPage);
