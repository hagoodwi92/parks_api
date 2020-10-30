require 'rails_helper'

describe "put a state park route", :type => :request do
  let!(:state) { FactoryBot.create(:state, :state_park => "Wyoming", :id => 1)}

  before do
    put '/states/1', params: {:state_park => 'test_state_park' }
  end

  it 'updates the body of review' do
    expect(JSON.parse(response.body)['message']).to eq 'This state park has been updated successfully.'
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:success)
  end
end