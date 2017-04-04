#write a method to convert an integer to a Roman numeral string
def convert number
  if number.to_i <= 99
    old_roman_numeral = ('L' * (number.to_i / 50).to_i).to_s + ('X' * ((number.to_i%50).to_i / 10).to_i).to_s + ('V' * ((number.to_i%10).to_i / 5).to_i).to_s + ('I' * (number.to_i%5).to_i).to_s

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
