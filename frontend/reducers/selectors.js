export const selectGroup = (groups, id) => {
  let group;
  for (let key in groups) {
    if(key === id){
      group = groups[key];
    }
  }
  return (group);
};
