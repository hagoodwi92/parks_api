require 'rails_helper'

describe "get all nationals route", :type => :request do
  let!(:nationals) { FactoryBot.create_list(:national, 20)}

  before { get '/nationals'}

  it 'returns all nationals' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end