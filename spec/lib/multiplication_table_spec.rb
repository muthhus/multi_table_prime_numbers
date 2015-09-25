require 'spec_helper'
require "multi_table_of_prime_number/multiplication_table"

describe MultiTableOfPrimeNumber::MultiplicationTable do
  
  context '#print!' do
    let(:multi_table_prime_number) { described_class.new([2,3,5,7,11])}
    
    let(:fake_data){
      [
        "       |     2     3     5     7    11",
         "     - |------------------------------",
          "     2 |     4     6    10    14    22",
           "     3 |     6     9    15    21    33",
            "     5 |    10    15    25    35    55",
             "     7 |    14    21    35    49    77",
              "    11 |    22    33    55    77   121"] }
    
    it 'print! the table' do
      expect(multi_table_prime_number.print!).to match(fake_data)
    end
    
  end
  
end
