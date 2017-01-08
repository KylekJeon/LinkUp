json.array! @discussions do |discussion|
  json.title discussion.title
  json.id discussion.id
  json.time discussion.created_at.strftime("%I:%M%p, %b %d")
  json.comments discussion.comments do |comment|
    json.id comment.id
    json.body comment.body
    json.time comment.created_at.strftime("%I:%M%p, %b %d")
    json.discussion_id comment.discussion_id
    json.user_first_name User.find(comment.user_id).first_name
    json.user_last_name User.find(comment.user_id).last_name
    json.user_image_url asset_path(User.find(comment.user_id).profile_photo.url)
  end
end
