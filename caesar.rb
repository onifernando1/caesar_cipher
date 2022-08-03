# frozen_string_literal: true

def caesar_cipher(string, shift)
  lower = string.downcase
  split = lower.split('')
  split_ascii = split.map(&:ord)
  p split_ascii
  ascii_cypher = split_ascii.map do |number|
    if number == 32 || number <= 98 || number >= 123
      number
    elsif (number + shift) <= 122 && (number + shift) >= 97
      number + shift
    elsif (number + shift) >= 123
      number + shift - 26
    elsif (number + shift) <= 98
      (number + shift) + 27
    end
  end
  p ascii_cypher
  split_cypher = ascii_cypher.map(&:chr)
  cypher = split_cypher.join('')
  p cypher
end

caesar_cipher('What a string!', 5)
