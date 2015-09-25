require_relative 'prime'

module MultiTableOfPrimeNumber
  class Generator
    
    def generate_prime_numbers count
      prime_numbers = []
      prime_idx = 1
      
      until prime_numbers.length == count
        prime_idx = Prime.next_prime_number(prime_idx)
        prime_numbers << prime_idx
      end
      
      return prime_numbers
    end
    
  end
end