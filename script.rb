def caesar_cipher(string, number)
  alphabet = Array('a'..'z')
  cipher_text = ''

  string = string.to_s unless string.is_a?(String)
  number = number.to_i unless number.is_a?(Integer)

  string.downcase.chars.each do |char|
    if alphabet.include?(char)
      new_index = (alphabet.index(char) + number) % alphabet.length
      cipher_text += alphabet[new_index]
    else
      cipher_text += char
    end
  end

  puts "#{string} -> #{cipher_text}"
end
