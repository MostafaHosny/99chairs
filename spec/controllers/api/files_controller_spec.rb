require 'rails_helper'

RSpec.describe API::FilesController, type: :controller do
	before :each do
	  @file = fixture_file_upload('files/test.csv', 'text/csv')
	end

	context 'can upload a csv file' do
      before { post :prossecing, params: { file: @file }}

      it 'upload should a file ' do
        expect(response).to have_http_status(200)
      end

      it 'returns status code 201' do
      	expect(JSON.parse(response.body)['any']).to eq(3)  
      end
    end
    context 'should respond with error if no file' do
      before { post :prossecing, params: { file: nil }}

      it 'upload should a file ' do
        expect(response).to have_http_status(500)
      end

    end
end
