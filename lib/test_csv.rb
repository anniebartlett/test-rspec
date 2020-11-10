require 'csv'

def parse_csv
  data = []
  CSV.foreach('lib/test.csv') do |row|
    csv_data = {
      number: row[0],
      item: row[1],
      price: row[2].to_i,
      tax: row[3].to_i,
      total: row[4].to_i
    }
    data << csv_data
  end
  data
end

p parse_csv[3][:tax].class
