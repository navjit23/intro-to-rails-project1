json.extract! player, :id, :name, :age, :photo, :nationality, :created_at, :updated_at
json.url player_url(player, format: :json)
