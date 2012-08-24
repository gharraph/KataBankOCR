require_relative 'spec_helper'

describe DigitDictionary do
  context "#look_up" do
    it "should look up any Digit object and return the numeric presentation of this object" do
      @four = Digit.new  "   ", 
                         "|_|", 
                         "  |"
      @digit_dictionary = DigitDictionary.new
      @digit_dictionary.look_up(@four).should == 4
    end
  end
end