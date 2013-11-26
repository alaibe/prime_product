module PrimeProduct
  module Report
    class Io < Struct.new(:output)

      def print
        puts output
      end
      
    end
  end
end