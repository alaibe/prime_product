module PrimeProduct
  class Product < Struct.new(:primes)
    
    def calculate
      primes.reduce([]) do |result, prime|
        result << primes.map { |value| prime * value }
      end
    end
    
  end
end