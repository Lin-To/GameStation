json.extract! @user, :id, :name, :description, :avatar
json.games @user.games do |game|
  json.extract! game, :id, :description, :name, :game, :edition, :start_date, :end_date
  json.date game.created_at.strftime("%m/%d/%y")
end
# for bookings
json.bookings @user.bookings do |booking|
  json.id booking.id
  json.start_date booking.start_date
  json.end_date booking.end_date
  json.booking_user booking.user.name
  json.booking_game booking.game.name
  json.status booking.status

  json.date booking.created_at.strftime("%m/%d/%y")
end
# for all bookings made by other people to my games - requests
json.requests @requests do |request|
  json.id request.id
  json.start_date request.start_date
  json.end_date request.end_date
  json.request_user request.user.name
  json.request_game request.game.name
  json.status request.status
  json.date request.created_at.strftime("%m/%d/%y")
end
