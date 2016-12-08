export const fetchEvents = () => (
  $.ajax({
    method: "GET",
    url: 'api/events'
  })
);

export const fetchCurrentUserEvents = (userId) => (
  $.ajax({
    method: "GET",
    url: `api/users/${userId}/events`
  })
);

export const fetchCurrentGroupEvents = (groupId) => (
  $.ajax({
    method: "GET",
    url: `api/groups/${groupId}/events`
  })
);

export const createGroupEvent = (groupId) => (
  $.ajax({
    method: "POST",
    url: `api/groups/${groupId}/events`
  })
);
