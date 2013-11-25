require 'optparse'
require 'ostruct'

module PrimeProduct
  class OptParser

    def self.parse(args)
      options = OpenStruct.new

      opt_parser = OptionParser.new do |opts|
        opts.banner = "Usage: prime_product n [options]"
  
        opts.separator ""
        opts.separator "Specific options:"

        opts.on("-N", "--number [NUMBER]", Integer, "Display the product table for N numbers, default is 10") do |number|
          options.number = number
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