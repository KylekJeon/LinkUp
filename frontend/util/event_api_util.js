export const fetchEvents = () => (
  $.ajax({
    method: "GET",
    url: 'api/events'
  })
);

export const fetchCurrentUserEvents = () => (
  $.ajax({
    method: "GET",
    url: 'api/events?filter=user'
  })
);

export const fetchCurrentGroupEvents = (groupId) => (
  $.ajax({
    method: "GET",
    url: 'api/events?filter=group',
    data: { groupId }
  })
);

export const createGroupEvent = (groupId) => (
  $.ajax({
    method: "POST",
    url: `api/groups/${groupId}/events`
  })
);

export const fetchCurrentUserGroupEvents = () => (
  $.ajax({
    method: "GET",
    url: 'api/events?filter=user_groups'
  })
);
