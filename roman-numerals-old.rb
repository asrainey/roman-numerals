#write a method to convert an integer to a Roman numeral string
def convert number
  if number <= 3000
    old_roman_numeral = ('M' * (number.to_i / 1000).to_i).to_s + \
    ('D' * ((number.to_i%1000).to_i / 500).to_i).to_s + \
    ('C' * ((number.to_i%500).to_i / 100).to_i).to_s + \
    ('L' * ((number.to_i%100) / 50).to_i).to_s + \
    ('X' * ((number.to_i%50).to_i / 10).to_i).to_s + \
    ('V' * ((number.to_i%10).to_i / 5).to_i).to_s + \
    ('I' * (number.to_i%5).to_i).to_s
  end
  puts old_roman_numeral
end

puts 'Pick a number between 1 and 3000'
number = gets.chomp

convert number
