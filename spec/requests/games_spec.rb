require 'rails_helper'

describe "api/v1/games" do
  let(:valid_attributes) {
    {
      genre: 'genero de teste',
      name: 'Teste',
    }
  }

  let(:invalid_attributes) {
    {
      genre: 1,
      name: 2,
    }
  }

  let(:valid_headers) {
    {}
  }

  describe "GET /index" do
    it "renders a successful response" do

      minecraft = Game.create!(name: 'Minecraft', genre:'sandbox')
      minecraft = JSON.parse(minecraft.to_json).deep_symbolize_keys
      cs = Game.create!(name: 'CS1.6', genre:'fps')
      cs = JSON.parse(cs.to_json).deep_symbolize_keys
      bioshock = Game.create!(name: 'BioShock', genre:'foda')
      bioshock = JSON.parse(bioshock.to_json).deep_symbolize_keys

      get api_v1_games_url, headers: valid_headers, as: :json
      hash_res = JSON.parse(response.body).deep_symbolize_keys

      expect(response).to be_successful
      expect(hash_res[:data][:games]).to include(minecraft)
      expect(hash_res[:data][:games]).to include(cs)
      expect(hash_res[:data][:games]).to include(bioshock)
      expect(hash_res[:data][:games].first[:genre]).to include('sandbox')

    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      game = Game.create! valid_attributes
      get api_v1_game_url(game), as: :json
      expect(response).to be_successful
    end
  end

  # describe "POST /create" do
  #   context "with valid parameters" do
  #     it "creates a new Game" do
  #       expect {
  #         post api_v1_games_url,
  #              params: { game: valid_attributes }, headers: valid_headers, as: :json
  #       }.to change(Game, :count).by(1)
  #     end

  #     it "renders a JSON response with the new game" do
  #       post api_v1_games_url,
  #            params: { game: valid_attributes }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:created)
  #       expect(response.content_type).to match(a_string_including("application/json"))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "does not create a new Game" do
  #       expect {
  #         post api_v1_games_url,
  #              params: { game: invalid_attributes }, as: :json
  #       }.to change(Game, :count).by(0)
  #     end

  #     it "renders a JSON response with errors for the new game" do
  #       post api_v1_games_url,
  #            params: { game: invalid_attributes }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:unprocessable_entity)
  #       expect(response.content_type).to eq("application/json")
  #     end
  #   end
  # end

  # describe "PATCH /update" do
  #   context "with valid parameters" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }

  #     it "updates the requested game" do
  #       game = Game.create! valid_attributes
  #       patch api_v1_game_url(game),
  #             params: { game: new_attributes }, headers: valid_headers, as: :json
  #       game.reload
  #       skip("Add assertions for updated state")
  #     end

  #     it "renders a JSON response with the game" do
  #       game = Game.create! valid_attributes
  #       patch api_v1_game_url(game),
  #             params: { game: new_attributes }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:ok)
  #       expect(response.content_type).to match(a_string_including("application/json"))
  #     end
  #   end

    # context "with invalid parameters" do
    #   it "renders a JSON response with errors for the game" do
    #     game = Game.create! valid_attributes
    #     patch api_v1_game_url(game),
    #           params: { game: invalid_attributes }, headers: valid_headers, as: :json
    #     expect(response).to have_http_status(:unprocessable_entity)
    #     expect(response.content_type).to eq("application/json")
    #   end
    # end
  # end

  # describe "DELETE /destroy" do
  #   it "destroys the requested game" do
  #     game = Game.create! valid_attributes
  #     expect {
  #       delete api_v1_game_url(game), headers: valid_headers, as: :json
  #     }.to change(Game, :count).by(-1)
  #   end
  # end
end
