require 'rails_helper'

describe "put a national park route", :type => :request do
  let!(:national) { FactoryBot.create(:national, :national_park => 'Yellowstone', :state => "Wyoming", :id => 1)}

  before do
    put '/nationals/1', params: { :national_park => 'test_national_park', :state => 'test_state' }
  end

  it 'updates the body of review' do
    expect(JSON.parse(response.body)['message']).to eq 'This national park has been updated successfully.'
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:success)
  end
end