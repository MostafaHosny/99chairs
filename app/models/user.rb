class User < ApplicationRecord

	def self.import(result)
		result.keys.each do |first_name|
			user = User.find_by(first_name: first_name) 
			if user
				new_count = user.count + result[first_name]
				user.update_attributes(count: new_count)
			else
				User.create!(first_name:first_name , count: result[first_name] )
			end
		end
	end
	
end
