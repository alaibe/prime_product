require_relative '../../../spec_helper'

module PrimeProduct
  describe Formatter do
    
    describe '#generate!' do
      let(:product )    {[
        [1, 2, 3],
        [2, 4, 6],
        [3, 6, 9],
      ]}
      let(:formatter) { Formatter.new([1, 2, 3], product) }
           
      it 'generate a table from the header and the data' do
        formatter.generate!
        result = <<-eos
  | 1 2 3
---------
1 | 1 2 3
2 | 2 4 6
3 | 3 6 9
eos
        expect(formatter.output).to eql result
      end
    end

  end
end