require 'rails_helper'

RSpec.describe 'Api::V1::Item', type: :request do
  describe '#index' do
    let!(:item) { create(:item) }
    before { get api_v1_items_url }
    it 'response with protocol buffers' do
      items_response = ::ItemsResponse.decode(response.body)
      expect(response).to have_http_status(200)
      expect(items_response.items[0].id).to eq item.id
      expect(items_response.items[0].title).to eq item.title
    end
  end
end
