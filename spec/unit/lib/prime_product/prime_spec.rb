require_relative '../../../spec_helper'

module PrimeProduct
  describe Prime do
    let(:prime) { Prime.new() }

    describe '#first' do
      subject { prime.first 10 }
      
      it { should eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }
    end
  end
end