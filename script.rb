# frozen_string_literal: true

def caesar_cipher(string, number)
  alphabet = Array('a'..'z')
  cipher_text = ''

  string = string.to_s unless string.is_a?(String)
  number = number.to_i unless number.is_a?(Integer)

  string.chars.each do |char|
    if alphabet.include?(char.downcase)
      is_uppercase = char == char.upcase
      new_index = (alphabet.index(char.downcase) + number) % alphabet.length
      new_char = alphabet[new_index]

      new_char = new_char.upcase if is_uppercase
      cipher_text += new_char
    else
      cipher_text += char
    end
  end

  puts "#{string} -> #{cipher_text}"
end

puts 'Enter the text you want to cipher:'
text = gets.chomp
puts 'Enter the cipher key:'
caesar_cipher(text, gets.chomp.to_i)
