require 'rails_helper'

describe "delete a state park", :type => :request do
  let!(:state) { FactoryBot.create(:state, :state_park => 'Pittock', :id => 1)}

  before do
    delete '/states/1', params: { :state_park => 'test_state_park', :state => 'test_state' }
  end

  it 'deletes the body of state' do
    expect(JSON.parse(response.body)['message']).to eq 'This state park has been destroyed successfully.'
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:success)
  end
end