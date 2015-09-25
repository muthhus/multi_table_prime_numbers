require 'spec_helper'
require "multi_table_of_prime_number/prime"

describe MultiTableOfPrimeNumber::MultiplicationTable do
  
  it "checks whether given number is a prime" do
    expect(Prime.is_prime?(2)).to match(true)
    expect(Prime.is_prime?(12)).to match(false)
    expect(Prime.is_prime?(101)).to match(true)
    expect(Prime.is_prime?(-101)).to match(false)
  end
  
end