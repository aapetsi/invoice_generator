require 'rails_helper'

RSpec.describe 'Timesheet API', type: :request do
  # initialize test data
  let!(:timesheets) { create_list(:timesheet, 10) }
  let(:timesheet_id) {timesheets.first.id}

  # Test suite for GET /timesheet
  describe 'GET /api/v1/timesheet' do
    # make HTTP get request before each example
    before { get '/api/v1/timesheet' }

    it 'returns timesheets' do
      expect(json["data"].size).to eq(10)
      expect(json).not_to be_empty
      expect(json.size).to eq(3)
      # expect(json[:data].size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /timesheet/id
  describe 'GET /api/v1/timesheet/:id' do
    before { GET "/api/v1/timesheet/#{timesheet_id}" }

    context 'when the record exists' do
      # it 'returns the timesheet' do
      #   expect(json).not_to be_empty
      #   expect(json["data"]["id"]).to eq(timesheet_id)
      # end

      # it 'returns status code 200' do
      #   expect(response).to have_http_status(200)
      # end
    end

    # context 'when the record does not exist' do
    #   let(:timesheet_id) { "200" }

    #   it 'returns status code 404' do
    #     puts response
    #   end
    # end
  end

  # Test suite for POST /timesheet
  describe 'POST /timesheet' do
    # valid payload
    let(:valid_attributes) { { employee_id: '3', company: 'google', billable_rate: 450, date: '2019-8-8', start_time: 1000, end_time: 1600 } }

    context 'when the request is valid' do
      before { post '/api/v1/timesheet', params: valid_attributes }

      it 'creates a new timesheet' do
        expect(json['data']['company']).to eq('google')
        expect(json['message']).to eq('Saved timesheet')
        expect(json['status']).to eq('SUCCESS')
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the request is invalid' do
      before { post '/api/v1/timesheet', params: { employee_id: '2', start_time: 945, end_time: 1530, company: 'google' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns validation failure message' do
        expect(json["data"]["billable_rate"][0]).to match("can't be blank")
      end
    end
  end

  # Test suite for DELETE /timesheet/:id
  describe 'DELETE /api/v1/timesheet/:id' do
    before { delete "/api/v1/timesheet/#{timesheet_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for PUT /timesheet/?id
  describe 'PUT /api/v1/timesheet/:id' do
    let(:valid_attributes) { { billable_rate: 550 } }

    context 'when the record exists' do
      before { put "/api/v1/timesheet/#{timesheet_id}", params: valid_attributes}

      it 'updates the record' do
        expect(json["data"]["billable_rate"]).to eq(550)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end