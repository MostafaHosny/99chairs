class UsersController < ApplicationController
	def index
		@users = User.select(:first_name , :count)
	end

	def import
		@result = CsvProssecing.new(params[:file]).process
		if @result
			User.import(@result)
  		redirect_to root_url 
  	else
  		raise ActiveRecord::RecordInvalid
  	end
	end
end
