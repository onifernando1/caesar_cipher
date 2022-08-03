# frozen_string_literal: true

class Caesar

  def caesar_cipher(string, shift)
    lower = string.downcase
    split = lower.split('')
    split_ascii = split.map(&:ord)
    p split_ascii
    ascii_cypher = split_ascii.map do |number|
      if number == 32 || number < 97 || number >= 123
        number 
      elsif (number + shift) <= 122 && (number + shift) >= 97
        number + shift
      elsif number + shift > 122 
        new_shift = number + shift 
        until new_shift <= 122 
          new_shift -= 26
          
        end 
        new_shift 
      elsif number + shift < 97 
        new_shift = number + shift 
        until new_shift <= 97
          new_shift +=26
        end
        new_shift 
    end
  end 

    
    split_cypher = ascii_cypher.map(&:chr)
    cypher = split_cypher.join('')
    p cypher
    cypher

  end

end 

caesar = Caesar.new()

caesar.caesar_cipher("h",35)
