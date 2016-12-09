json.array! @events do |event|
  json.name event.name
  json.id event.id
  json.datetime event.event_time.strftime("%^A, %^B  %e")
  json.time event.event_time.strftime("%s").to_i*1000
  json.sameDay event.event_time.strftime("%m/%d/%Y")
  json.description event.description
  json.groupId event.group_id
  json.location event.location
  json.timeOfDay event.event_time.strftime("%l:%M %p")
  json.groupName Group.find(event.group_id).name
end