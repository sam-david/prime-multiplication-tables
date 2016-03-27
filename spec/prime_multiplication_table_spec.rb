# External TestData in separate file test_data.rb
# This contains expected data for the first 10 prime multiplication table

describe 'PrimeMultiplicationTable class' do
  let(:prime_table) { PrimeMultiplicationTable.new(10) }

  it 'must be an integer size as argument' do
    expect{PrimeMultiplicationTable.new('INVALID SIZE')}.to raise_error('Table size must be an integer')
  end

  context 'first 10 prime table' do
    it 'verify prime table data' do
      data = prime_table.data
      expected_data = TestData.prime_data
      expect(data).to eq(expected_data)
    end

    it 'correct format for terminal output' do
      formatted_data = prime_table.format
      expected_format = TestData.prime_formatted
      expect(formatted_data).to eq(expected_format)
    end
  end
end
