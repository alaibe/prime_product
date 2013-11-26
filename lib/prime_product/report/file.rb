module PrimeProduct
  module Report
    class File
      
      def initialize(output)
        @output = output
        @file   = ::File.new("report.txt",  "w+")
      end

      def print
        @file.write @output
      end
      
    end
  end
end