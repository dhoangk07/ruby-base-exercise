=begin
5. Roman Numerals
This quiz asks you to write a converter to and from Roman numerals.
The script should be a standard Unix filter, reading from files specified on the command line or STDIN and writing to STDOUT. Each line of input will contain one integer (from 1 to 3,99913) expressed as an Arabic or Roman numeral. There should be one line of output for each line of input, containing the original number in the opposite format.
For example, given the following input:
III
29
38
CCXCI
1999
The correct output is as follows:
3
XXIX
XXXVIII
291
MCMXCIX
If you’re not familiar with or need a refresher on Roman numerals, the rules are simple. First, seven letters are associated with seven values:
I=1 
V=5
X = 10
L = 50
C = 100 
D = 500 
M = 1000
Second, you can combine letters to add values by listing them largest to smallest from left to right:
II is 2 
VIII is 8 
XXXI is 31
However, you may list only three consecutive identical letters. That requires a special rule to express numbers like 40 and 900. That rule is that a single lower value may precede a larger value to indicate sub- traction. This rule is used only to build values not reachable by the previous rules. Those numbers are as follows:
IV is 4
IX is 9
XL is 40
XC is 90
CD is 400
CM is 900
=end


def roman_change_integer(x)
  roman_base = {
         "M" =>  1000,
         "D" =>  500,
         "C" =>  100,
         "L" =>  50,
         "X" =>  10, 
         "V" =>  5,
         "I" =>  1
          }
  special_roman = {
          "IV" => 4,  
          "IX" => 9,
          "XL" => 40,
          "XC" => 90,
          "CD" => 400,
          "CM" => 900,
          }
    arr = []
    result = []
    numberal = x.split("")
    index = 0
    while index < numberal.length
      roman_char = numberal[index]
      next_roman_char = numberal[index+1]
        
      if (index + 1) < numberal.length
        if roman_base[roman_char] >= roman_base[next_roman_char]
          arr << roman_base[roman_char]
          index += 1
        else
          arr << (roman_base[next_roman_char] - roman_base[roman_char])
          index += 2
        end
      else
        arr << roman_base[roman_char]
        index += 1
      end
    end
    arr.sum
end