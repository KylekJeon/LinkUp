json.array! @users do |user|
  json.id user.id
  json.username user.username
  json.email user.email
  json.first_name user.first_name
  json.last_name user.last_name
  json.created_at user.created_at
  json.image_url asset_path(user.profile_photo.url)
end
