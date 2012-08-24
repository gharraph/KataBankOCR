require_relative 'digit'

class AccountNumber
  attr_accessor :number
  
  def initialize(array_of_digits)
    @number = array_of_digits
    @illegible = true
  end
  
  
  
  def valid?
    checksum = 0
    position = @number.length
    @number.each_with_index do |digit, index|
      if digit.to_number == "?"
        @illegible = false
      else
        checksum += (position-index) * digit.to_number
      end
    end
    if checksum % 11 == 0
      true
    else
      false
    end
  end
  
  
  def output
    File.open("OCR_results.txt", "a") do |f|
      @number.each do |digit|
        f.print digit.to_number
      end
      if self.valid? && @illegible
        f.puts ""
      elsif @illegible
        f.puts " ERR"
      else
        f.puts " ILL" 
      end
    end
  end
  


end

