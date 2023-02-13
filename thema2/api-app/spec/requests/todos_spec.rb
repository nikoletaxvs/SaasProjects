
require 'rails_helper'

RSpec.describe 'Todos API', type: :request do
  # initialize test data
   
  it 'returns all books' do
    FactoryBot.create(:todo, title:'Hello',username:'George')
    get '/todos'
    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body).size).to eq(2)
  end
end