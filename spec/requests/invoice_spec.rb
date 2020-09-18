require 'rails_helper'

RSpec.describe 'Invoice API', type: :request do
  # initialise test data
  let!(:timesheets) { create_list(:timesheet, 10) }
  let(:timesheet_id) { timesheets.first.id }
  let(:company) { "instagram" }

  # Test suite for GET /invoice/company
  describe "GET /api/v1/invoice/:company" do
    before { get "/api/v1/invoice/#{company}"}

    it 'generates the invoice with correct total' do
      expect(json["total"]).to eq(20000)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
