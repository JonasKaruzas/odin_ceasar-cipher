def caesar_cipher(string, key)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  position = 0
  new_string = ""

  string.each_char do |c|
    if alphabet.index(c.downcase) == nil
      new_string += c
    else
      position = alphabet.index(c.downcase)
      position += key.to_i
      
      if position > 25
        position -= 26
      end
  
      if c == c.upcase
        new_string += alphabet[position].upcase
      else
        new_string += alphabet[position]
      end
    end
  end

 puts new_string
end

caesar_cipher("What a string!", 5)