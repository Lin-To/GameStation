json.games do
  json.array! @games do |game|
    json.extract! game, :id, :name, :description
  end
end
