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

export const fetchCurrentEvent = (eventId) => (
  $.ajax({
    method: "GET",
    url: `api/events/${eventId}`,
  })
);

export const fetchCurrentEventUsers = (eventId) => (
  $.ajax({
    method: "GET",
    url: `api/events/${eventId}/fetch`
  })
);

export const addUserToEvent = (eventId) => (
  $.ajax({
    method: "POST",
    url: `api/events/${eventId}/rsvp?filter=add`
  })
);

export const removeUserFromEvent = (eventId) => (
  $.ajax({
    method: "POST",
    url: `api/events/${eventId}/rsvp?filter=remove`
  })
);

export const createEvent = (event, groupId) => (
  $.ajax({
    method: "POST",
    url: `api/groups/${groupId}/events`,
    data: { event }
  })
);
