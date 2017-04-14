#write a method to convert an integer to a Roman numeral string
def convert number
  old_roman_numeral = 'M' * (number.to_i / 1000) + \
  'D' * ((number.to_i % 1000) / 500) + \
  'C' * ((number.to_i % 500) / 100) + \
  'L' * ((number.to_i % 100) / 50) + \
  'X' * ((number.to_i % 50) / 10) + \
  'V' * ((number.to_i % 10) / 5) + \
  'I' * (number.to_i % 5)
  puts old_roman_numeral
end

puts 'Pick a number between 1 and 3000'
number = gets.chomp

convert number
