json.array!(@friends_for_usrs) do |friends_for_usr|
  json.extract! friends_for_usr, :id, :friends
  json.url friends_for_usr_url(friends_for_usr, format: :json)
end
