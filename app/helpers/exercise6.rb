  def fibonacci(number)
    if number < 2
      number
    else
      (fibonacci( number - 1 ) + fibonacci( number - 2 ))
    end
  end
  
  def create_array(number)
    array = []
    (0..number).each do |i|
      array << fibonacci(i)
    end
    array
  end
  
  hash={}
  ("a".."z").each_with_index do |e, index|
    1: 'a'
    puts "#{index+1}. #{e}"
  end
  
  def change_to_integer(x)
    ("a".."z").each_with_index do |x, index|
      puts "#{index+1}. #{x}"
    end
    
    array = []
    ("a".."z").each do |i|
    array << "#{index+1}. #{x}"
  end
  
  














  #4. Write a Ruby program which accept the radius of a circle from the user and compute the parameter and area.

def C(x)
  puts "The perimeter is P:#{2*Math::PI*x}"
  puts "THe area is A:#{Math::PI*x*x}"
end

#5. Write a program to print the multiply of decimal numbers.

def multiply(x, y)
  puts "The multiply is #{x*y}"
end

#6. Write a Ruby program which accept the user's first and last name and print them in reverse order with a space between them

def name 
  puts "Input your first name"
  a = gets.chomp
  puts "Input your last name"
  b = gets.chomp
  puts "Your full reverse name is :#{(a + " "+ b).reverse}" 
end 

#7. Write a Ruby program to accept a filename from the user print the extension of that.

def filename
  puts "Input your file name"
  a = gets.chomp
  puts "Base name: #{a.split(".")[0]}"
  puts "Extention: #{a.split(".")[1]}"
end

#9. Write a Ruby program to check three numbers and return true if one or more of them are small. A number is called "small" if it is in the range 1..10 inclusive.

def numbers
  puts "input first number"
  a = gets.chomp.to_i
  puts "input second number"
  b = gets.chomp.to_i
  puts "input third number"
  c = gets.chomp.to_i
  if (1< a && a < 10) or (1< b && b < 10) or (1<c  && c < 10)
    puts "True"
  else 
    puts "False"
  end
end

#12. Write a Ruby program to create a new string where "if" is added to the front of a given string. If the string already begins with "if", return the string unchanged

def add_if
  puts "Input your string"
  a = gets.chomp
  if a.split[0] =="if"
    puts a
  else
    puts "The string after Prepend: #{a.prepend("if ")}"
  end
end

#14. Write a Ruby program which accept the radius of the sphere as input and compute the volume.

def sphere(x)
  puts "The volume of the sphere is V=#{4/3*Math::PI*x*x*x}"
end

#15. Write a Ruby program to create a new string from a given string where the first and last characters have been exchanged.

def switch
  puts "Input your string"
  a = gets.chomp
  c = a[0]
  a[0] = a[-1]
  a[-1] = c
  puts "The string after switching is #{a}"
end

#16. Write a Ruby program to test whether you are minor (Consider a child unless he or she is less than 18 years old.) or not

def minor
  puts "Input your age"
  a = gets.chomp.to_i
  if a < 18
    puts "Your are a minor"
  else
    puts "Your are not a minor"
  end
end

#18. Write a Ruby program to find the maximum of two numbers.

def max
  puts "Input first number"
  a = gets.chomp.to_i
  puts "Input second number"
  b = gets.chomp.to_i
  if a > b 
    puts "Max is #{a}"
  elsif
    a < b
    puts "Max is #{b}"
  else
    puts "Two values are same"
  end
end

#20. Write a Ruby program to find the greatest of three numbers. 

def greatest
  puts "Input first number"
  a = gets.chomp.to_i
  puts "Input second number"
  b = gets.chomp.to_i
  puts "Input third number"
  c = gets.chomp.to_i
  puts "The greatest number is #{[a,b,c].max}"
end

#23. Write a Ruby program to print "Ruby Basic Exercises" 9 times. 

def print
  9.times do 
    puts "Ruby Basic Exercises"
  end
end

#26.Write a Ruby program to print 34 upto 41

 (34..41).each { |n| puts n}
 
#27. Write a Ruby program to print even numbers from 1 to 10.

(1..10).to_a.each { |x| puts x if x.even?}

#28.Write a Ruby program to print odd numbers from 10 to 1

(1..10).to_a.sort.reverse.each { |x| puts x if x.odd?}

#32. Write a Ruby program to print a specified character twenty times. 

def print
  puts "Input specified character"
  a = gets.chomp
  20.times do puts "#{a}"
  end
end

#34. Write a Ruby program to check whether a string 'Java' appears at index 1 in a given sting, if 'Java' appears return the string without 'Java' otherwise return the string unchanged. 

def java
  puts "Input string"
  a = gets.chomp.to_s
  if a.split[1]include?("Java") == true
     c = a.slice! "Java"
     puts "#{a}"
  else
     puts "#{a}"
  end
end


#35. Write a Ruby program to create a string using the first two characters (if present) of a given string if the first character is 'p' and second one is 's' otherwise return a blank string. 

def create (a)
  if a[0..1] =="ps"
     puts " ps "
  else 
    puts " "
  end
end

#36 Write a Ruby program to check two integers and return whichever value is nearest to the value 10, or return 0 if two integers are equal.

def check(a, b)
  distance_a = (10 - a).abs
  distance_b = (10 - b).abs
    
  if distance_a > distance_b
    b
  elsif distance_a < distance_b
    a
  else
    0
  end
end

#37. Write a Ruby program to check two integer values and return true if they are both in the range 10..20 inclusive, or they are both in the range 20..30 inclusive.

def check
  
end

#39.Write a Ruby program to check a given string contains 'i' characters.

def check(a)
  if a.include?("i") == true 
    puts "this string contain 'i' "
  else puts "this string not contain 'i' "
  end
end

40. Write a Ruby program to check two non-negative integer values and return true if they have the same last digit.

#41. Write a Ruby program to count the number of 5's in an given array.

def given(array)
  puts "the number of 5's in an given array is #{array.count(5)}"
end


#Make a hash that is similar to the snowy_owl hash, but make all of the keys symbols.

#snowy_owl = { "type"=>"Bird", "diet"=>"Carnivore", "life_span"=>"10 years" }

Hash[snowy_owl.map{ |k, v| [k.to_sym, v] }]
 => {:type=>"Bird", :diet=>"Carnivore", :life_span=>"10 years"}
 
 for i in [1..3]
   do colors.map { |e| e + "+ i"}
   end
 end
 
 [1..100].map{|e| e%3 == 0 && e%5 == 0 }





















 

def change_integer(x)
  new_array = []
  array = ('a'..'z').to_a
  a = x.downcase.split('')
  a.each do |i|
    p array.index(i)
  end
end

def print_out(x)
  arr1=[]
  x.each do |i|
    if i.is_a? Integer
      arr1 << i
    end
  end
  puts "array integeris #{arr1}"
end

b.each do |i|
  if i== 17 puts "#{i}"
  else
    puts "1"
  end
end

def make_effect(tag, word)
  result "<#{tag}> #{word} </#{tag}>"
end






class Customer
   @@no_of_customers = 0
   def initialize(id, name, addr)
      cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   def to_s
     puts @cust_id

   end
end
a= Customer.new(1,2,3)
puts a.to_s















#=> How can invoke protected or method :printedArea

class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # instance method by default it is public
   def getArea
      getWidth() * getHeight
   end

   # define private accessor methods
   def getWidth
      @width
   end
   def getHeight
      @height
   end
   # make them private
   private :getWidth, :getHeight

   # instance method to print area
   def printArea
      @area = getWidth() * getHeight
      puts "Big box area is : #@area"
   end
   # make it protected
   protected :printArea
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"

# try to call protected or methods
box.printArea()

#Create Object Using Allocate 

class Box
   attr_accessor :width, :height

   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # instance method
   def getArea
      @width * @height
   end
end

# create an object using new
box1 = Box.new(10, 20)

# create another object using allocate
box2 = Box.allocate

# call instance method using box1
a = box1.getArea()
puts "Area of the box is : #{a}"

# call instance method using box2
a = box2.getArea()
puts "Area of the box is : #{a}"

class Box
   puts "Type of self = #{self.class}"
   puts "Name of self = #{self.name}"
end


("a".."z").each_with_index do |e, index|
  puts "#{index+1}. #{e}"
end

def string(x)
  ("a".."z").map{|e| }
  puts "The number of string is"
end


(1..4).each_with_index do |e, index|
  puts "#{index+1}. #{e}"
end
















#1. Write a Ruby program to check if a value exists in an array.

a = ["Red", "Green", "Blue", "White"]

a.include? "Green"
a.include? "Pink"

#2. Write a Ruby program to check whether 7 appears as either the first or last element in an given array. The array length must be 1 or more

def check(nums)
  return (nums[0]==7 || nums[-1] ==7)
end

#3. Write a Ruby program to pick number of random elements from an given array.

def pick(nums)
  p nums.sample
end

4. Write a Ruby program to check whether first and the last element are the same of an given array of integers. The array length must be 1 or more. 

#5. Write a Ruby program to compute the sum of elements in a given array.

def array(nums)
  p "Sum of the values of the above array:#{nums.sum}"
end

#6. Write a Ruby program to remove duplicate elements from an given array.

def array(nums)
  puts "Array with unique elements : #{nums.uniq}"
end

#7. Write a Ruby program to check two given arrays of integers and test if they have the same first element or they have the same last element. Both arrays length must be 1 or more.

def array(nums, nums1)
  return (nums[0] == nums1[0] or nums[nums.length-1] == nums1[nums1.length-1])
end

#8. Write a Ruby program to remove blank elements from an given array. 

def array(x)
  puts "Remove blank element from the above array #{x.delete("")}"
  puts "#{x.to_a}"
end

#9. Write a Ruby program to compute the sum of all the elements. The array length must be 3 or more.

def array(x)
  if x.length > 3
  puts "Sum of all elements array is #{x.sum} "
  end
end

#10 Write a Ruby program to split a given array which combine string and array to become two array separately

def array(x)
  integer_array=[]
  string_array=[]
  x.each do |a|
    if a.class == Integer
      puts(integer_array.push(a))
      
      integer_array.push(a)
      puts integer_array
    elsif a.class == String
     string_array.push(a)
    end
  end
  p integer_array
  p string_array
  1
end


#11.Write a Ruby program to create an array with the elements "rotated left" of an given array of ints length 3.
#12. Write a Ruby program to create a new array with the elements in reverse order from a given an array of integers length 3

def array(x)
  puts "New array with elemement in reverser order is #{x.reverse}"
end

#13. Write a Ruby program to find the larger between the first and last elements of an given array of integers and length 3. Replace all the other values to be that value. Return the changed array.
  
#16. Write a Ruby program to concatenate array of arrays into one. 

def array(x,y)
  puts "concatenate array is #{x+y} "
end

#17. Write a Ruby program to check whether an given array of integers of length 2 contains a 4 or a 7. 

def array(x)
  if (x.include?(4) || x.include?(7)) && x.length == 2
    puts "the array contain a 4 or a 7"
  else 
    puts "the array not contain a 4 or a 7"
  end
end

#18. Write a Ruby program to check whether an given array of integers of length 2 does not contain a 6 or a 9

def array(x)
  if (x.include?(6) == false && x.include?(9) == false) && x.length == 2
  puts "the array not contain a 6 or a 9"
  elsif x.length >= 3
    puts "the array length more than 3"
  else
    puts "the array contain a 6 or a 9"
  end
end

#19. Write a Ruby program to check if an given array of integers contains 3 twice, or 5 twice. The array will be length 0, 1, or 2.

def array(x)       
  
end       

class Box
   # Initialize our class variables
   @@count = 0
   def initialize(w,h)
      # assign instance avriables
      @width, @height = w, h

      @@count += 1
   end

   def printCount()
      puts "Box count is : #@@count"
   end
end





 
  
  
  
  
  
  
  