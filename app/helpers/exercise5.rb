def read_1_digits(x)
  hash = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 
          4 => "four", 5 => "five", 6 => "six", 7 => "seven", 
          8 => "eight", 9 => "nine"}
    
  hash[x]
end

def read_2_digits(x)
  hash_3 = {10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 
                  14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 
                  18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 
                  40 =>"fourty", 50 => "fifty", 60 => "sixty", 70 => "seventy" ,80 => "eighty", 
                  90 =>"ninety"}
   result = '' 
  if x < 19            
    result = hash_3[x]
  else
    hang_chuc = (x - x%10)
    hang_donvi = x % 10
    result = hash_3[hang_chuc]
    result = result + ' ' + read_1_digits(hang_donvi)
  end
  result
end

def read_3_digits(x)
  length_number = x.to_s.split("").length
  if length_number == 1
    read_1_digits(x)
  elsif length_number == 2
    read_2_digits(x)
  else
    hang_tram = (x/100).round
    two_digits = (x % 100)
    result = read_1_digits(hang_tram) + ' hundred and ' + read_2_digits(two_digits) 
  end
end

def integer_to_word(x)
  number_of_zero = {
    0 => '',
    1 => 'thousand',
    2 => 'million',
    3 => 'billion',
    4 => 'trillion'
  }
  
  if x <1000
    read_3_digits(x)
  else
    ten_multiply = 1000
    group_index = 0
    result = ''
    while x > 0
      remainder = x % ten_multiply
      puts remainder
      result = read_3_digits(remainder) + ' ' + number_of_zero[group_index] + ' ' + result
      x = x / ten_multiply
      group_index += 1
    end
    result
  end
end

puts integer_to_word(3421342314123)