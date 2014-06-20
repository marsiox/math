require 'spec_helper'
require_relative '../perfect'

describe Perfect do
  
  describe "#divisors" do
  	it "returns all divisors of the number" do
  	  perfect = Perfect.new
      expect(perfect.divisors(36)).to eq([1,2,3,4,6,9,12,18])
    end
  end

  describe "#summarize" do
  	it "sum all numbers in an array" do
  	  perfect = Perfect.new
      expect(perfect.summarize([1,2,3,4,5])).to eq(15)
    end
  end

  describe "#find" do
  	it "find all perfect nunbers in a range" do
  	  perfect = Perfect.new
      expect(perfect.find(1000)).to eq([6, 28, 496])
    end
  end

end