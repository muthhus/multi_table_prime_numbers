class Prime
  
  def self.next_prime_number prime_number
    loc_prime_number = prime_number+1
    
    until is_prime? loc_prime_number do
      loc_prime_number += 1
    end
    
    return loc_prime_number
  end
  
  def self.is_prime?(prime_number)
    return false if prime_number <= 1
    
    (2..Math::sqrt(prime_number)).each do |x|
      return false if prime_number % x == 0
    end
    
    return true
    
  end
  
end