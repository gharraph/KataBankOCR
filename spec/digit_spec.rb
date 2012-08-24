require_relative 'spec_helper'

describe Digit do
  before :each do
    @three = Digit.new " _ ", 
                       " _|", 
                       " _|"
  end
  context "#new" do
    it "can be instantiated with three rows of strings" do
      @two = Digit.new " _ ", 
                       " _|", 
                       "|_ "
      @two.row1.should eq(" _ ")
      @two.row2.should eq(" _|")
      @two.row3.should eq("|_ ")
    end
    
    context "#to_number" do
      it "should return numeric represntation of Digit object" do
        @three.to_number.should eq(3)
      end
    end
  end
end
