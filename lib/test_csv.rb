require 'csv'

class CsvImporter
  def self.parse_csv
    CSV.parse(File.read('lib/test.csv'), headers: true, converters: :numeric).map(&:to_h)
  end
end
