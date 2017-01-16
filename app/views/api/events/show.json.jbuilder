json.name @event.name
json.id @event.id
json.datetime @event.event_time.strftime("%^A, %^B  %e")
json.description @event.description
json.groupId @event.group_id
json.location @event.location
json.timeOfDay @event.event_time.strftime("%l:%M %p")
json.groupName Group.find(@event.group_id).name
json.event_time @event.event_time
json.latitude @event.latitude
json.longitude @event.longitude
