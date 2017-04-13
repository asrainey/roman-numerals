def convert number
  if number.to_i <= 3000
    roman_numeral = ('M' * (number.to_i / 1000).to_i).to_s + \
    ('IM' * ((number.to_i%1000).to_i / 999).to_i).to_s + \
    #('D' * ((number.to_i%1000).to_i / 500).to_i).to_s + \ #need to exclude 999 from this
    ('ID' * ((number.to_i%500).to_i / 499).to_i).to_s + \
    #('C' * ((number.to_i%500).to_i / 100).to_i).to_s + \ #need to exclude 499 from this
    #'IC' \
    ('L' * ((number.to_i%100) / 50).to_i).to_s + \
    #'IL' \
    ('X' * ((number.to_i%50).to_i / 10).to_i).to_s + \
    ('IX' * ((number.to_i%10).to_i / 9).to_i).to_s + \
    ('V' * ((((number.to_i%10).to_i / 5).to_i) - ((number.to_i%10).to_i / 9).to_i)).to_s + \
    ('IV' * ((((number.to_i%5).to_i / 4).to_i) - ((number.to_i%10).to_i / 9).to_i)).to_s + \
    ('I' * (((number.to_i%5).to_i) - (4 * ((number.to_i%5).to_i / 4)).to_i)).to_s
  end
  puts roman_numeral
end

puts 'Pick a number between 1 and 3000'
number = gets.chomp

convert number
