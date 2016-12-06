import { getUserPage } from './../util/users_api_util';

export function getUserProfile(id) {
  return (dispatch) => {
    return APIUtil.getUserPage(id);
  };
}
