json.extract! @user, :id, :name, :description, :avatar
json.games @user.games do |game|
  json.extract! game, :id, :description, :name, :game, :edition, :start_date, :end_date
  json.date game.created_at.strftime("%m/%d/%y")
end
# for bookings
json.bookings @user.bookings do |booking|
  json.extract! booking, :id, :start_date, :end_date, :status, :user_id, :game_id
  json.date booking.created_at.strftime("%m/%d/%y")
end
