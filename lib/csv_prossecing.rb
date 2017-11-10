require 'csv'
class CsvProssecing
  
  def initialize(file)
    @file = file.tempfile
  end

  def process
    csv_file = CSV.read(@file, :headers=>true)
    data_hash = {}
    csv_file.each do |user|
      if data_hash[user[1]]
        data_hash[user[1]] = data_hash[user[1]] + 1
      else
        data_hash[user[1]] = 1 
      end
    end
    data_hash = data_hash.select{|key , value| value > 1}
  end
end