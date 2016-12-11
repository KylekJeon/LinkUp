json.extract! user, :id, :username, :email, :first_name, :last_name
json.image_url asset_path(user.profile_photo.url)
