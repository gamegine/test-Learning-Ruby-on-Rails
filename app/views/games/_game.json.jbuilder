json.extract! game, :id, :title, :genre, :platform, :stars, :created_at, :updated_at
json.url game_url(game, format: :json)
