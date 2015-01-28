require 'rails_helper'

describe 'Posts endpoint' do

  describe 'GET #index' do

    it 'responds with an array of posts' do
      get '/posts', {}, HTTP_ACCEPT: 'application/json; version=1'

      json = JSON.parse( response.body )

      expect(json.count).to eq 1
      expect(json.first['title']).to eq 'The RSpec Book'
    end
  end
end