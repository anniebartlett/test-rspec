require './lib/test_csv'
require 'rspec'

describe 'Testing CSV' do
  describe '#ID number' do
    it 'should not contain underscore' do
      expect(parse_csv[3][:number].include? "_").to eq(false)
    end
  end

  describe '#Total' do
    it 'should provide the correct total' do
      expect(parse_csv[3][:price] + parse_csv[3][:tax]).to eq(36)
    end
  end
end
