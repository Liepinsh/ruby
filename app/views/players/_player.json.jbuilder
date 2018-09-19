json.extract! player, :id, :name, :number, :position, :club, :team, :created_at, :updated_at
json.url player_url(player, format: :json)
