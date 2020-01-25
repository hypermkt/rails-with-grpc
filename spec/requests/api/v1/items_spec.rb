require 'rails_helper'

RSpec.describe 'Api::V1::Item', type: :request do
  describe '#index' do
    let!(:item) { create(:item) }
    before { get api_v1_items_url }
    it { expect(response).to have_http_status(200) }
  end
end
