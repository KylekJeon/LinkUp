
export const fetchGroups = () => (
  $.ajax({
    method: "GET",
    url: "api/groups"
  })
);
