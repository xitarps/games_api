class GamesController < ActionController::Base
  def index
    @games = Game.fetch_from_api_all
  end
end