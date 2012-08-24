require_relative 'digit'
require_relative 'account_number'

module Parser
  
  def self.read_file(filename)
    @file = File.read filename
  end
  
  def self.parse
    account_number_lines = []
    
    @file.split("\n").each_with_index do |line, index|
      if (index+1) % 4 != 0
        account_number_lines << line
      else
        generate_account_number account_number_lines
        account_number_lines = []
      end
    end
    
  end
  
  
  def self.generate_account_number account_number_lines
    account_number_arr = []
    (0..24).step(3) do |n|
      account_number_arr << Digit.new(account_number_lines[0][n,3], account_number_lines[1][n,3], account_number_lines[2][n,3])
    end
    account_number = AccountNumber.new(account_number_arr)
    account_number.output
  end
end

Parser.read_file 'OCR_output.txt'
Parser.parse


