class Game < ApplicationRecord
  def self.fetch_from_api_all

    response = Faraday.get 'https://x-games-api.herokuapp.com/api/v1/games'
    # return [] unless response.status == 200

    games = JSON.parse(response.body, symbolize_names: true)[:data][:games]

    # games.map do |game|
    #   new(name: game[:name], genre: game[:genre])
    # end

    # rescue Faraday::ConnectionFailed
    # []

  end
end
