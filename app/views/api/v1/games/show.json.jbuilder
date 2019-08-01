
json.extract! @game, :id, :name, :description, :user_id, :edition
json.user @game.user, :id, :name, :avatar

# json.comments @game.comments do |comment|
#   json.extract! comment, :id, :content, :name
#   json.date comment.created_at.strftime("%m/%d/%y")
# end
