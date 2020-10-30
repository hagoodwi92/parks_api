require 'rails_helper'

describe "put a national park route", :type => :request do

  before do
    put '/nationals/1', params: { :national_park => 'test1', :state => 'test2' }
  end

  it 'updates the national park' do
    expect(JSON.parse(response.body)['national_park']).to eq('test1')
  end

  it 'updates the state' do
    expect(JSON.parse(response.body)['state']).to eq('test2')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:OK)
  end
end