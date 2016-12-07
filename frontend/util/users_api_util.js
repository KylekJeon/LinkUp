export const getUserPage = (id) => (
  $.ajax({
    method: "GET",
    url: `api/users/${id}`
  })
);

export const fetchUserGroups = (id) => (
  $.ajax({
    method: "GET",
    url: `api/users/${id}/groups`
  })
);
