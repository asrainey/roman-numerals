def convert number
  roman_numeral = 'M' * (number.to_i / 1000) + \
  'IM' * ((number.to_i % 1000) / 999) + \
    #('D' * ((number.to_i%1000).to_i / 500).to_i).to_s + \ #need to exclude 999 from this
  'ID' * ((number.to_i % 500) / 499) + \
  'C' * ((number.to_i % 500) / 100) + \
  'IC' * ((number.to_i % 500) / 99) + \
  'L' * (((number.to_i % 100) / 50) - ((number.to_i % 100) / 99)) + \
  'IL'* (((number.to_i % 50) / 49) - ((number.to_i % 100) / 99)) + \
  'X' * (((number.to_i % 50) / 10) - (4 * ((number.to_i % 50) / 49))) + \
  'IX' * (((number.to_i % 10) / 9) - ((number.to_i % 50) / 49)) + \
  'V' * (((number.to_i % 10) / 5) - ((number.to_i % 10) / 9)) + \
  'IV' * (((number.to_i % 5) / 4) - ((number.to_i % 10) / 9)) + \
  'I' * (((number.to_i % 5)) - (4 * ((number.to_i % 5) / 4)))
  puts roman_numeral
end

puts 'Pick a number between 1 and 3000'
number = gets.chomp

convert number
