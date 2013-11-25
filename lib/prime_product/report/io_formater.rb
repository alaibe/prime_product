module PrimeProduct
  module Report
    class IoFormater < Struct.new(:primes, :data)
      
      attr_reader :output
      
      SEPARATOR = ' |'
      
      def generate!
        @output ||= []
        @output << generate_first_row
        @output << generate_divide_row
        
        data.each_with_index { |row, row_number| @output << generate_row(row, row_number) }
        
        @output = @output.join("\n")
        @output << "\n"
      end
      
      private
      
      def left_column_width
        primes.last.to_s.length
      end
      
      def column_width
        data.last.last.to_s.length + 1
      end

      def generate_first_row
        ''.rjust(left_column_width) + SEPARATOR + generate_array(primes)
      end
      
      def generate_array(array)
        array.reduce('') { |result, number| result << number.to_s.rjust(column_width) }
      end
      
      def generate_divide_row
        generate_first_row.gsub(/./, '-')
      end
      
      def generate_row(row, row_number)
        primes[row_number].to_s.rjust(left_column_width) +
          SEPARATOR +
          generate_array(row)
      end

      def print
      end
    end
  end
end