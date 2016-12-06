export const getUserPage = (id) => (
  $.ajax({
    method: "GET",
    url: `api/users/${id}`
  })
);
