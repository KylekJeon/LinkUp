export const selectGroup = (groups, id) => {
  let group;
  for (let key in groups) {
    if(key === id){
      group = groups[key];
    }
  }
  return (group);
};


export const selectUserIds = (users) => {
  let userIds;
  userIds = users.map((user) => (
    user.id
  ));
  return userIds;
};
