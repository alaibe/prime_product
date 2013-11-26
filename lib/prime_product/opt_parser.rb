require 'optparse'
require 'ostruct'

module PrimeProduct
  class OptParser

    def self.parse(args)
      options             = OpenStruct.new
      options.number      = 10
      options.upper_bound = 100
      options.report      = Report::Io

      opt_parser = OptionParser.new do |opts|
        opts.banner = "Usage: bin/prime_product [options]"
  
        opts.separator ""
        opts.separator "Specific options:"

        opts.on("-N", "--number [NUMBER]", Integer, "Display the product table for N numbers, default is 10") do |number|
          options.number = number
        end
        
        opts.on("-U", "--upper_bound [NUMBER]", Integer, "Upper bound for prime number calculation, default is 100") do |number|
          options.upper_bound = number
        end
        
        opts.on("-R", "--report_class [STRING]", String, "Class you want to use as reporter, default is Report::Io") do |string|
          options.report = eval string
        end
        
        opts.separator ""
        opts.separator "Common options:"
  
        opts.on_tail("-h", "--help", "Show this message") do
          puts opts
          exit
        end
      end

      opt_parser.parse!(args)
      options
    end

  end
end