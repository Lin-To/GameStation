json.games do
  json.array! @games do |game|
    json.extract! game, :id, :name, :description, :user_id, :edition, :start_date, :end_date
  end
end
