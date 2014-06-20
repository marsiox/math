require 'spec_helper'
require_relative '../prime'

describe Prime do
  
  describe "#is_prime?" do
  	it "checks if the given number is a prime number" do
  	  p = Prime.new
      expect(p.is_prime?(5)).to be true
      expect(p.is_prime?(19)).to be true
      expect(p.is_prime?(6)).to be false
      expect(p.is_prime?(25)).to be false
    end
  end


end