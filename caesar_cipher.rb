def caesar_cipher(text, shift)
  text = text.split('').collect do |char|
    ((char.ord - 97 - shift) % 26 + 97).chr
  end.join
  text
end

puts 'Enter a string to encipher'
string = gets.chomp
puts 'Enter the shift strength'
strength = gets.chomp.to_i
puts caesar_cipher(string, strength)
