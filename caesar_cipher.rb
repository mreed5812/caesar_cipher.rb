
#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

#You will need to remember how to convert a string into a number.

#Don’t forget to wrap from z to a.

#Don’t forget to keep the same case.

puts 'Enter a phrase: '
phrase = gets
puts 'Enter a key: '
key = gets

puts "phrase: " + phrase 
puts "key: " + key

#convert string to array of chars

phrase_array = phrase.each_byte

shifted_array = phrase_array.map{|num| num + key.to_i} 
  

shifted_array.each do |num|
    puts num
 end




