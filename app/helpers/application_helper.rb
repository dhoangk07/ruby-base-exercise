module ApplicationHelper
  #19. Write a Ruby program to check if an given array of integers contains 3 twice, or 5 twice. The array will be length 0, 1, or 2.
  def check_array_19(x)       
    if x.length == 0 || x.length == 1
      result = "Please input array with length 2"
    elsif x.count(3) == 2 && x.length >= 2
      result = "The array contain 3 twice"
    elsif x.count(5) == 2 && x.length >= 2
      result = "The array contain 5 twice" 
    end
  end   

  #20. Write a Ruby program to set 5 to 1 if there is a 3 immediately followed by a 4 in an given array of integers (length 3).

  def check_array_20(x)
    if x.length == 3 && ((x.find_index(3) - x.find_index(4)) == 1)
      puts "1"
    end
  end

  #21. Write a Ruby program to compute the sum of two arrays (length 3) and return the array which has the largest sum

  def compute(x,y)
    if x.length ==3 && y.length ==3
      if x.sum > y.sum
        puts "the array which has the largest sum is #{x}"
      else
        puts "the array which has the largest sum is #{y}"
      end

      else 
        puts "please input array with length 3 "
    end
  end

  #22. Write a Ruby program to create a new array of length 2 containing the middle two elements from an given array of integers of even length 2 or more

  #23. Write a Ruby program to create a new array of length 4 containing all their elements from two array of integers, length 2.

  def create_array(x,y)
    x.each do |i|
      i.is_a? Integer == false
      puts "Please input array of integer"
    end
 
    if x.length ==2
      puts "New array is #{a+b}"
    else
      puts "Please input array with length 2"
    end
  end

  #25. Write a Ruby program to create a new array length 3 containing the elements from the middle of an given array of integers of odd length (at least 3).

  def create_array(x)
    if x.length < 3
      puts "Please input array with length 3"
    elsif 
      x.length.even?
      puts "Please input array with odd length"
    else
      halfarr = [];
      half = x.length/2;
      halfarr[0] = x[half-1];
      halfarr[1] = x[half];
      halfarr[2] = x[half+1];
    end
    return halfarr;
  end
#26. Write a Ruby program to find the largest value from a given array of integers of odd length. The array length will be a least 3

  def find_largest(x)
    if x.length < 3
      puts "Please input array with length 3"
    elsif 
      x.length.even?
      puts "Please input array with odd length"
    else
      puts "The largest value is #{x.max}"
    end
  end

#A. Write a Ruby program to find the element not integer from a given array 

def check_array(x)
  if x.length < 3
    puts "Please input array with length 3"
  else
    x.each do |i|
      i.is_a? Integer 
      puts "#{i}"
    end
  end
end

#29. Write a Ruby program to get the number of even integers in an given array.

def get_even(x)
  for x.each do |i|
    puts "the number even integer is #{i.even?}"
  end
end

#30. Write a Ruby program to find the difference between the largest and smallest values of an given array of integers and length 1 or more. 

def find_difference(x)
  puts "the difference between the largest and smallest values is #{x.max-x.min}"
end

#31. Write a Ruby program to compute the average values of an given array of except the largest and smallest values. The array length must be 3 or more.

def average(x)
  if x.length >= 3
    puts "the average values is #{(x.sum-x.max-x.min).to_f/x.length}"
  else
    puts "please input with array length 3 or more"
  end
end

#32. Write a Ruby program to compute the sum of the numbers of an given array except the number 17 and numbers that come immediately after a 17. Return 0 for an empty array. 



#33. Write a Ruby program to check whether the sum of all the 3's of an given array of integers is exactly 9

def sum_9(x)
  x.each do |i|
    sum = 0
    if i == 3

  end
end

#36 Write a Ruby program to check whether it contains no 3 or it contains no 5.

def check_array(x)
  if x.include?(3) || x.include?(5)
    puts "the array contains no 3 or it contains no 5"
  else
    puts "the array not contains no 3 and it contains no 5"
  end
end

#37. Write a Ruby program to check whether a given value appears everywhere in an given array. A value is "everywhere" in an array if it presents for every pair of adjacent elements in the array.

#38. Write a Ruby program to check whether an given array contains a 3 next to a 3 or a 5 next to a 5, but not both.

def check_array(x)
  a=(x.find_index (3))-(x.find_index (3)) == 0
  b=(x.find_index (5))-(x.find_index (5)) == 0
  if a||b
    puts "the given array contains a 3 next to a 3 or a 5 next to a 5"
  end
end

#48. Write a Ruby program to sort an given array of strings by length. 
# find min element of given array
# remove that element from given array
# append that element to new array
def sort(x)
  new_arr1 = []
  for index in (1..(x.length)) 
    x.each do |element|
      if element.length == find_length_min(x).length
        x.delete(element)
        puts x
        new_arr1 << element
      end
    end
  end
  new_arr1
end

def find_length_min(x)
  new_arr1 = []
  new_arr = []
  result = nil
  x.each do |i|
    new_arr << i.length
  end
  x.each do |i|
    if i.length == new_arr.min
      result = i
    end
  end
  result 
end

def sort_v2(x)
  x.sort {|a,b| a.length <=> b.length }
end

def sort_depend_on_3(b)
  arr=[]
  a = b.sort {|y,x| y.to_s.split("").count("3") <=> x.to_s.split("").count("3")}
end


def find_element_with_min_3(x)

end

def sort_depend_on_3(b)
  arr = []
  arr1 = []
  arr2 = []
  arr3 = []
  b.each do |i|
    if i.to_s.split("").count("3") == 0
      arr << i
    end
    arr
  end

  (b-arr).each do |e|
    if e.to_s.split("").count("3") == 1
      arr1<<e
    end
    arr1
  end

  (b-arr1).each do |f|
    if f.to_s.split("").count("3") == 2
      arr2 << f
    end
    arr2
  end

  (b-arr2).each do |g|
    if g.to_s.split("").count("3") == 3
      arr3 << g
    end
    arr3
  end
  puts "after sorting #{arr.sort+arr1.sort+arr2.sort+arr3.sort}"
end

def find_number_has_maximun_3(x)
  arr = []
  result = nil
  x.each do |i|
    arr << i.to_s.split("").count("3") 
  end

  x.each do |i|
    if i.to_s.split("").count("3") == arr.max
      result = i
    end
  end
  result
end

def sort(x)
  new_arr1 = []
  for index in (1..(x.length)) 
    x.each do |element|
      if element.length == find_length_min(x).length
        x.delete(element)
        puts x
        new_arr1 << element
      end
    end
  end
  new_arr1
end

def sort(x)
  new_arr1 = []
  y = find_number_has_maximun_3(x).to_s.split("").count("3")
  for index in 1..y
    # for index in (1..x.length)
    x.each do |element|
      if element.to_s.split("").count("3") == (find_number_has_maximun_3(x).to_s.split("").count("3"))
        x.delete(element)
        puts x
        new_arr1 << element
      end
    end
  end
  new_arr1
end
 
def find_number_has_maximun_3(x)
  arr = []
  result = nil
  x.each do |i|
    arr << i.to_s.split("").count("3") 
  end

  x.each do |i|
    if i.to_s.split("").count("3") == arr.max
      result = i
    end
  end
  result
end




#45. Write a Ruby program to search items start with specified string of a given array. 

def search_item(x,y)
  arr = []
  x.each do |i|
    if i.include?(y) == true
      arr << i
    else 
    end
  end
  arr
end 

#44. Write a Ruby program to check whether all items are identical in an given array.

def check_array(x,y)
  if y.all? { |e| x.include?(e) } == true
    true
  else
  false
  end
end

#43. Write a Ruby program to find most occurred item in an given array.

def find_most_occurred_item(x)
  arr = []
  x.uniq.each do |element|
    arr << x.count(element)
  end
    arr
    result = "#{h = Hash[x.uniq.zip arr]}"
end



def compare(x,y)
  if x.to_s.count("3") < y.to_s.count("3") 
    1
  elsif (x.to_s.count("3") == y.to_s.count("3")) && x < y 
    1
  else 
    -1
  end
end























String

#2. Write a Ruby program to insert a string of length 2 to an another string where the first string will be in the middle of the second string.

#3. Write a Ruby program to lower case, upper case and capitalizes all the words of a given string.

def change_style(x)
  puts "Lower case is #{x.downcase}"
  puts "Upper case is #{x.upcase}"
  puts "capitalizes is #{x.capitalize}"
end

#4. Write a Ruby program to check whether first and the last element are the same of an given array of integers. The array length must be 1 or more

#5. Write a Ruby program to remove all white space within a string

def remove(x)
  puts "After removing all white space within a string: #{x.delete(" ")}"
end

#6. Write a Ruby program to remove last specified characters from a given string. 

def remove_last(x)
  puts "After removing last specified characters from a given #{x.chomp(x[-1])}"
end

#7. Write a Ruby program to split a delimited string and convert it to an array.
#8. Write a Ruby program to remove a substring from a specified string. 

def remove_substring(my_string, substring)
  my_string.slice! substring
  return my_string
end

#9. Write a Ruby program to check whether a string starts with an other string. 

def check_string(given_string, substring)
  if given_string.start_with?(substring)
  return given_string
  else
    puts "the given string not start with an #{substring} "
  end
end

#10. Write a Ruby program to count the occurrences of a specified character in a given string. 

def count_character(given_string,specified_character)
  puts "The times occurrences of [#{specified_character}] is #{given_string.count(specified_character)}"
end

#11. Write a Ruby program to sort a string's characters alphabetically.

def sort_string(x)
  puts "String after sorting is #{x.chars.sort_by(&:downcase).join}"
end

#13. Write a Ruby program to trim specific characters from a string.

def trim_specific_character(x,y)
  x.slice!(y)
  puts "#{x}"
end

#14. Write a Ruby program to remove the first and last two characters from a specified string.

def remove_two_character(x)
  a = x.split
  a.delete_at 0
  a.delete_at -1
  "#{a.join(" ")}"
end
 
#15. Write a Ruby program to get a substring from a specified position to the last char of a given string

#16. Write a Ruby program to get the number of lines in a given string. 

#17. Write a Ruby program to truncate a given string to the first n words.

def truncate(x,y)
  # truncate(x,y)
end


# truncate("Once upon a time in a world far far away", 14)
# # => Once upon a...

# truncate("Once upon a time in a world far far away")
# # => Once upon a time in a world f...

# truncate("And they found that many people were sleeping better.", 25, "(clipped)")
# # => And they found that many (clipped)

# truncate("And they found that many people were sleeping better.", 15, "... (continued)")
# # => And they found... (continued)

#18. Write a Ruby program to remove a character from a given string if it starts with that specified character. 

def remove_character(x,y)
  arr = []
  x.split.each do |element|
    if element[0] == y 
      arr << element 
    end
  end
  arr
end











#Write a Ruby program to determine given array whether mirror or not.

class Array
  def same_value?
    self.uniq.length ==1
  end
end

def idenical_array(l,r)
  a = l.zip(r).map { |x1, y1| x1 == y1 } 
  if a.same_value? == true && a[0] == true
    puts "given array is symmetric"
  else
    puts "given array is not symmetric"
  end
end

def mirror_array(x)
  if x.length == 1 
    puts "please input array with length more than 1"
  else
    if x.length.even?
      z = x.each_slice(x.length/2.to_f).to_a
        left_array = z[0]
        right_array = z[1].reverse!
     idenical_array((left_array),(right_array))
    elsif x.length.odd?
      w = x.each_slice((x.length+1)/2.to_f).to_a
        left_array =  w[0].reverse.drop(1).reverse
        right_array =  w[1].reverse!
     idenical_array((left_array),(right_array))
    end
  end
end


# Write a Ruby program to determine a given array whether same as another array 

def same_as(x,y)
  for index in 
end









  
end
