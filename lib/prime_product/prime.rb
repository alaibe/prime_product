module PrimeProduct
  class Prime
    include Enumerable
    
    attr_accessor :upper_bound
    
    def initialize(upper_bound = 100)
      @upper_bound = upper_bound
    end
    
    def each
      eratosthenes(upper_bound).each { |prime_number| yield prime_number }
    end
    
    private
    
    def eratosthenes(n)
      nums = [nil, nil, *2..n]
      (2..Math.sqrt(n)).each do |i|
        (i**2..n).step(i){|m| nums[m] = nil}  if nums[i]
      end
      nums.compact
    end
  end
end