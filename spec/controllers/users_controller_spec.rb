require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	before :each do
	  @file = fixture_file_upload('files/test.csv', 'text/csv')
	end

	context 'can upload a csv file' do
      before { post :import, params: { file: @file }}

      it 'upload should a file ' do
        expect(response).to have_http_status(302)
      end

      it 'should  redirect to root path ' do
      	expect(response).to redirect_to(root_path)
      end
    end
    context 'should respond with error if no file' do
      let(:file) {fixture_file_upload('files/test_no_name.csv', 'text/csv')}
      
      before { post :import, params: { file: file }}

      it 'upload should a file ' do
        expect(response).to have_http_status(422)
      end
    end
end
