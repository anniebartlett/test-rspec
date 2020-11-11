require './lib/test_csv'
require 'rspec'

describe CsvImporter do
  context 'test row' do
    subject { CsvImporter.parse_csv[3] }

    it 'follows the correct format' do
      expect(subject).to eq(
        {
          'number' => 'csv-4',
          'item' => 'Blouse',
          'price' => 20,
          'tax' => 4,
          'total' => 24
        }
      )
    end
  end
end
