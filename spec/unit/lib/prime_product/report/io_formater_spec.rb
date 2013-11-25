require_relative '../../../../spec_helper'

module PrimeProduct::Report
  describe IoFormater do
    
    describe '#generate!' do
      let(:product )    {[
        [1, 2, 3],
        [2, 4, 6],
        [3, 6, 9],
      ]}
      let(:io_formater) { IoFormater.new([1, 2, 3], product) }
           
      it 'generate a table from the header and the data' do
        io_formater.generate!
        result = <<-eos
  | 1 2 3
---------
1 | 1 2 3
2 | 2 4 6
3 | 3 6 9
eos
        expect(io_formater.output).to eql result
      end
    end

  end
end