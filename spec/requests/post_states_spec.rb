require 'rails_helper'

describe "post a national park route", :type => :request do

  before do
    post '/nationals', params: { :national_park => 'test_national_park', :state => 'test_state' }
  end

  it 'returns the national park' do
    expect(JSON.parse(response.body)['national_park']).to eq('test_national_park')
  end

  it 'returns the state' do
    expect(JSON.parse(response.body)['state']).to eq('test_state')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end