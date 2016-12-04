# API Endpoints

## HTML API

### Root

- `GET /` - loads React web app

## JSON API

### Users

- `POST /api/users`
- `PATCH /api/users`

### Session

- `POST /api/session`
- `DELETE /api/session`

### Groups

- `GET /api/groups`
  - Groups index/search
  - accepts "group_description" query param to list groups by description
- `POST /api/groups`
- `GET /api/groups/:id`
- `PATCH /api/groups/:id`
- `DELETE /api/groups/:id`

### Events

- `GET /api/events`
  - ordered by date
- `POST /api/groups/:groupId/events`
- `GET /api/groups/:groupId/events/:id`
- `DELETE /api/events/groups/:groupId/:id`
- `PATCH /api/events/groups/:groupId/:id`

### Calendars

- A calendar will be included in a group page
- `GET /api/calendars`
  - Get all calendars for all groups (bonus)
- `POST /api/calendars`
- `PATCH /api/calendars/:id`
- `GET /api/calendars/:id`
