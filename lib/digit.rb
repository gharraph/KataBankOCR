require_relative 'digits_dictionary'

class Digit
  attr_accessor :row1, :row2, :row3
  
  def initialize(str1, str2, str3)
    @row1 = str1
    @row2 = str2
    @row3 = str3
  end
  
  def to_number
    digits_dictionary = DigitDictionary.new
    digits_dictionary.look_up(self)
  end
  
  #override eql? and hash mehods to be able to use instances of Digit as keys
  def eql?(other)
    (@row1.eql? other.row1) && (@row2.eql? other.row2) && (@row3.eql? other.row3)
  end
  
  def hash
    [@row1, @row2, @row3].hash
  end
end
