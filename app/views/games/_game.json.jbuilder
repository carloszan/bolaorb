json.extract! game, :id, :homeTeam, :awayTeam, :hour, :scoreHomeTeam, :scoreAwayTeam, :created_at, :updated_at
json.url game_url(game, format: :json)
