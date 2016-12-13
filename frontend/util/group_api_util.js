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

export const removeUserFromGroup = (groupId) => (
  $.ajax({
    method: "DELETE",
    url: `api/groups/${groupId}/leave`
  })
);

export const makeUserGroupAdmin = (userId, groupId) => (
  $.ajax({
    method: "POST",
    url: `api/groups/${groupId}/admin`,
    data: { userId: userId}
  })
);

export const deleteAdminFromGroup = (groupId) => (
  $.ajax({
    method: "DELETE",
    url: `api/groups/${groupId}/unadmin`
  })
);

export const fetchUsersForGroup = (groupId) => (
  $.ajax({
      method: "GET",
      url: `api/groups/${groupId}/fetch?filter=users`
  })
);

export const fetchGroup = (groupId) => (
  $.ajax({
    method: "GET",
    url: `api/groups/${groupId}`
  })
);

export const createGroup = (group) => (
  $.ajax({
    method: "POST",
    url: 'api/groups',
    data: { group }
  })
);

export const fetchCurrentGroupAdmins = (groupId) => (
  $.ajax({
    method: "GET",
    url: `api/groups/${groupId}/fetch?filter=admins`
  })
);
