require 'csv'

class CsvImporter
  def self.parse_csv
    CSV.parse(File.read('lib/test.csv'), headers: true, converters: :numeric).map(&:to_h)
  end
end

# def parse_csv
#   data = []
#   CSV.foreach('lib/test.csv') do |row|
#     csv_data = {
#       number: row[0],
#       item: row[1],
#       price: row[2].to_i,
#       tax: row[3].to_i,
#       total: row[4].to_i
#     }
#     data << csv_data
#   end
#   data
# end
