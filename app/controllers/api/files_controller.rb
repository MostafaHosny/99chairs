require 'csv_prossecing'
class API::FilesController < API::BaseController
	def prossecing
		@result = CsvProssecing.new(params[:file]).process
		json_response(@result, :ok)
	end
end
