
export const fetchGroups = () => (
  $.ajax({
    method: "GET",
    url: "api/groups"
  })
);

export const addUserToGroup = (groupId) => (
  $.ajax({
    method: "POST",
    url: `api/groups/${groupId}/join`
  })
);
