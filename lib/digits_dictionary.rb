require_relative 'digit'

class DigitDictionary
  attr_accessor :digits_hash
  
  def initialize
   
    zero = Digit.new " _ ", 
                     "| |", 
                     "|_|"
    
    
    one = Digit.new  "   ", 
                     "  |", 
                     "  |"
                     
    two = Digit.new " _ ", 
                    " _|", 
                    "|_ "

    three = Digit.new " _ ", 
                      " _|", 
                      " _|"
     
    four = Digit.new  "   ", 
                      "|_|", 
                      "  |"

    five = Digit.new " _ ", 
                     "|_ ", 
                     " _|"

    six = Digit.new " _ ", 
                    "|_ ", 
                    "|_|"

    seven = Digit.new " _ ", 
                      "  |", 
                      "  |"

    eight = Digit.new  " _ ", 
                       "|_|", 
                       "|_|"

    nine = Digit.new " _ ", 
                     "|_|", 
                     " _|"

               
                    
    @digits_hash = { zero => 0, one => 1, two => 2, three => 3, four => 4, five => 5, six => 6,
                    seven=> 7, eight => 8, nine => 9 }
  end
  
  def look_up(digit)
    #fetch will return error message in the second argument if digit is not in the hash
    @digits_hash.fetch(digit, "?")
  end
end