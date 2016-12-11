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

export const updateUserProfilePhoto = (id, formData) => (
  $.ajax({
    method: "PATCH",
    url: `api/users/${id}`,
    contentType: false,
    processData: false,
    data: formData
  })
);  
