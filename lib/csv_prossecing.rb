require 'csv'
class CsvProssecing
  
  def initialize(file)
    @file = file.tempfile
  end

  def process
    csv_file = CSV.table(@file, :headers=>true)
    unless csv_file[:first_name].first.nil?
      data_hash = {}
      csv_file.each do |user|
        if data_hash[user[:first_name]]
          data_hash[user[:first_name]] = data_hash[user[:first_name]] + 1
        else
          data_hash[user[:first_name]] = 1 
        end
      end
      data_hash = data_hash.select{|key , value| value > 1}
    else
     return nil
    end
  end
end