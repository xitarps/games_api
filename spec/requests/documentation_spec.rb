require 'rails_helper'

describe 'documentation' do
  context 'get api/v1' do
    it 'successfully' do
      get '/api/v1'

      hash_res = JSON.parse(response.body).deep_symbolize_keys

      expect(response).to have_http_status(:ok)
      expect(hash_res[:message]).to include('api para jogos')
    end
  end
end
