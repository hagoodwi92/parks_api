require 'rails_helper'

describe "delete a national park", :type => :request do
  let!(:national) { FactoryBot.create(:national, :national_park => 'Yellowstone', :id => 1)}

  before do
    delete '/nationals/1', params: { :national_park => 'test_state_park', :state => 'test_state' }
  end

  it 'deletes the body of state' do
    expect(JSON.parse(response.body)['message']).to eq 'This national park has been destroyed successfully.'
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:success)
  end
end