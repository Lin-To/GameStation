json.extract! @user, :id
json.games @user.games do |game|
  json.extract! game, :id, :description, :name
  json.date game.created_at.strftime("%m/%d/%y")
end
