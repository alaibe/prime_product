require_relative '../../../spec_helper'

module PrimeProduct
  describe Product do
    describe '#calculate' do
      let(:product) { Product.new([1,2,3,4,5]) }
      subject { product.calculate }
      
      it { should eq [
        [1, 2, 3, 4, 5],
        [2, 4, 6, 8, 10],
        [3, 6, 9, 12, 15],
        [4, 8, 12, 16, 20],
        [5, 10, 15, 20, 25],
      ] }
    end
  end
end