require './lib/test_csv'
require 'rspec'

describe CsvImporter do
  let(:data) { CsvImporter.parse_csv }
  let(:id) { data.map { |row| row.values[0].include? "_" } }
  let(:title) { data.map { |row| row.values[1] =~ /^[A-Z][a-z]+$/ } }
  let(:price) { data.map { |row| row.values[2] } }
  let(:tax) { data.map { |row| row.values[3] } }
  let(:total) { data.map { |row| row.values[4] } }

  describe '#ID number' do
    it 'does not contain underscore' do
      expect(id).not_to include(true)
    end
  end

  describe '#Total' do
    it 'provides the correct total' do
      expect([price, tax].transpose.map { |sum| sum.reduce(:+) }).to match(total)
    end
  end

  describe '#Product title' do
    it 'follows the correct format' do
      expect(title).not_to include(nil)
    end
  end
end
