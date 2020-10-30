require 'rails_helper'

describe "post a state park route", :type => :request do

  before do
    post '/states', params: { :state_park => 'test_state_park' }
  end

  it 'returns the state park' do
    expect(JSON.parse(response.body)['state_park']).to eq('test_state_park')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end