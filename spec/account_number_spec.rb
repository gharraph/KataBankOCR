require_relative 'spec_helper'

describe AccountNumber do
  before :each do
     @zero = Digit.new " _ ", 
                       "| |", 
                       "|_|"
                       
     @one = Digit.new "   ", 
                      "  |", 
                      "  |"
                      
     @five = Digit.new " _ ", 
                       "|_ ", 
                       " _|"
                       
    @account_number1 = AccountNumber.new [@zero, @zero, @zero, @zero, @zero, @zero, @zero, @zero, @five, @one]
    @account_number2 = AccountNumber.new [@zero, @zero, @zero, @zero, @zero, @zero, @zero, @zero, @zero, @one]

  end
  context "#new" do
    it "should intialize with digits" do
      @digits = Array.new(9, Digit)
      @account_number = AccountNumber.new @digits
      @account_number.should be_an_instance_of AccountNumber
    end
  end
    
  context '#valid?' do
    it "should validate account number" do
      @account_number1.valid?.should be true
      @account_number2.valid?.should be false
    end
  end
  
  context "#output" do
    it "should output account number" do
      @account_number2.output
      File.read("OCR_results.txt").should include "0000000001 ERR"
      @account_number1.output
      File.read("OCR_results.txt").should include "0000000051"
    end
  end

end