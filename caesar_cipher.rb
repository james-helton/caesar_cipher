def caesar_cipher(text, shift)
  text = text.split('').collect do |char|
    if char.ord.between?(97, 97 + 25)
      ((char.ord - 97 - shift) % 26 + 97).chr
    elsif char.ord.between?(65, 65 + 25)
      ((char.ord - 65 - shift) % 26 + 65).chr
    else
      char
    end
  end.join
  text
end

puts 'Enter a string to encipher'
string = gets.chomp
puts 'Enter the shift strength'
strength = gets.chomp.to_i
puts caesar_cipher(string, strength)
