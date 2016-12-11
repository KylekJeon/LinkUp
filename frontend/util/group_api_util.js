export const fetchGroups = (filter) => (
  $.ajax({
    method: "GET",
    url: `api/groups?filter=${filter}`
  })
);

export const addUserToGroup = (groupId) => (
  $.ajax({
    method: "POST",
    url: `api/groups/${groupId}/join`
  })
);

export const fetchUsersForGroup = (groupId) => (
  $.ajax({
      method: "GET",
      url: `api/groups/${groupId}/fetch`
  })
);

export const fetchGroup = (groupId) => (
  $.ajax({
    method: "GET",
    url: `api/groups/${groupId}`
  })
);
