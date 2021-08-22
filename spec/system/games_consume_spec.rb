require 'rails_helper'

describe "/games" do
  describe "GET /index" do
    it "renders all games from api" do
      expected_res_body = File.read(Rails.root.join('spec/fixtures/games.txt'))

      allow(Faraday).to receive(:get).and_return(
        instance_double(Faraday::Response, status: 200, body: expected_res_body)
      )

      visit games_path

      expect(page).to have_content('jogo de teste 1')
      expect(page).to have_content('genero de teste 1')
      expect(page).to have_content('jogo de teste 2')
      expect(page).to have_content('genero de teste 2')
    end
  end
end