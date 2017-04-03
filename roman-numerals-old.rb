#write a method to convert an integer to a Roman numeral string
def convert number
  if number.to_i <= 4
    old_roman_numeral = 'I' * number.to_i

  elsif number.to_i <= 9
    old_roman_numeral = 'V' + ('I' * (number.to_i - 5)).to_s

  elsif number.to_i <= 49

  elsif number.to_i <= 99

  elsif number.to_i <= 499

  elsif number.to_i <= 999

  else
    #numbers >= 1000

  end
  puts old_roman_numeral
end

puts 'Pick a number between 1 and 3000'
number = gets.chomp

convert number
