module MultiTableOfPrimeNumber
  class MultiplicationTable
    attr_accessor :prime_numbers, :operation, :sqrt
   
   def initialize prime_numbers, operation,sqrt
      @prime_numbers = prime_numbers
      @operation = operation
      @sqrt_of_prime_number = sqrt
    end
    
    def print!
      rows = []
      rows << top_header
      rows << header_divider
      @prime_numbers.each do |val|
        rows << rendered_row(val)
      end
      rows
    end
    
    private
    
    def top_header
      if @sqrt_of_prime_number == "YES"
        builder(nil, @prime_numbers.map {|val|val*val})
      else
        builder(nil, @prime_numbers)
      end
    end
    
    def header_divider
      builder('-', @prime_numbers.map { |val| '--------'})
    end
    
    def rendered_row crt_prime_number
      if @operation == "multiplication" && @sqrt_of_prime_number == "NO"
        builder(crt_prime_number, 
              @prime_numbers.map { |val| val*crt_prime_number})
      elsif @operation == "addition" && @sqrt_of_prime_number == "NO"
        builder(crt_prime_number, 
              @prime_numbers.map { |val| val+crt_prime_number})
      elsif @operation == "multiplication" && @sqrt_of_prime_number == "YES"
        builder(crt_prime_number, 
              @prime_numbers.map { |val| (val*val)*(crt_prime_number*crt_prime_number)}) 
      elsif @operation == "addition" && @sqrt_of_prime_number == "YES"
        builder(crt_prime_number, 
              @prime_numbers.map { |val| (val*val)+(crt_prime_number*crt_prime_number)})   
      else
        puts "--operation is missing."
      end
    end
    
    def builder(y_val, numbers)
      if y_val !=0
        if @sqrt_of_prime_number == "YES" 

          [ padding(y_val.to_i*y_val.to_i), ' |', numbers.map { |val| padding(val) } ].join
        else
          [ padding(y_val), ' |', numbers.map { |val| padding(val) } ].join
        end
      end
    end
    
    def padding(char)
      '%8s' % char.to_s
    end
    
  end
end