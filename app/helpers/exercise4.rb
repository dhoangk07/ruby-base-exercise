activities = Activity.where(user_id: b.select(:id))







<% @activities.each do |activity| %>   
  <%= activity.inpect%>
<% end%>
   
   
   
   
   
   
   
   
    border-radius: 5px;
    font-family: inherit;
    font-size: 14px;
    height: 42px;
    width: auto;



<p style="width: 95px">






hash = { 0 => 'zero', 1=> 'one', 2=> 'two', 3=> 'three', 4=> 'four', 5=> 'five', 6=> 'six', 7=> 'seven', 8=> 'eight', 9=> 'nine'}

hash.each do |key, value|
  puts "number #{key} is #{value}"
end

def num(y)
  hash = { 0 => 'zero', 1=> 'one', 2=> 'two', 3=> 'three', 4=> 'four', 5=> 'five', 6=> 'six', 7=> 'seven', 8=> 'eight', 9=> 'nine'}
  y.digits.reverse.each do |x|
    puts hash[x]
  end
end   

 12.digits.each do |x|
   puts hash[x]
 end













names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end




digits = ['zero','one', 'two','three','four','five','six','seven','eight','nine','ten']
x = 0

digits.each do |digit|
  puts "#{x}.#{digit}"
  x +=1
end


hash = { 0 => 'zero', 1=> 'one', 2=> 'two', 3=> 'three', 4=> 'four', 5=> 'five', 6=> 'six', 7=> 'seven', 8=> 'eight', 9=> 'nine'}

hash.each do |key, value|
  puts "number #{key} is #{value}"
end

person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

b = {name: 'bob', height: '6ft'}


hash = { 0: 'zero', 1=> 'one', 2=> 'two', 3=> 'three', 4=> 'four', 5=> 'five', 6=> 'six', 7=> 'seven', 8=> 'eight', 9=> 'nine'}






[1..10000].each do |x|
  if x.to_s.include? "1*1" == true 
    puts x
  end
end


(100..10000).each do |x|
  if (x.to_s.count "11") ==2 && x.to_s.length ==3
    puts x
  end
end






# 3. Calculate sum of digits in the numbers
# eg1: [12, 4, 154] => [3, 4, 10]
new_arr = []
array = [123,321,12389]
array.each do |x|
  
  new_arr << x.digits.sum
end














# 1 Print square of number from 1 to n
# eg1: squares(3) => [1, 4, 9]










arr = []
def squares(n)
  puts n*n
end


def s(n)
  array = []
  for i in 1..n do
    
    array << i*i 
  end
  
  array
end



def s(n)
  for i in 1..n do
    puts i*i
  end
end












width: 200px;
 height: 200px;
 background-size: cover;
 display: block;
 border-radius: 100px;
 -webkit-border-radius: 100px;
 -moz-border-radius: 100px;








s = [ 1, 2, 3 ]           
t = [ 4, 5, 6, [7, 8] ]  
a = [ s, t, 9, 10 ]    

a = ["qwea", "dasde", 'fvdfvdf',"cscsdcd"]

array = []
a.each do |elem|
  if elem.include?("a")==true
    array << elem
  end
end

array






c = ["vsd", "vdvsdv", "sdvsdvsdv", 'lllllllll']
array = []
  max = 0
c.each do |elem|
  if elem.size >= max
    max = elem.size
end
end
c.each do |elem|
  if elem.size == max
    array << elem
  end
  
end
array


############

a = 1
if a >= 1
  a = 2
end

if a <= 2
  a = 3
end

a













a = [1, 3, 5, 7, 9 , 13, 15, 15, 15, 14]
count = 0
a.each do |elem|
  if elem >= a.max 
  count +=1
  end
end
puts count













def array
  max = array.max
end
puts max
end




def string(count_number)

  splits = count_number.chomp.split(" ")
  target = splits.length
  
end
puts target

def array
  array.each do |elem|
    
  end
end














<label>Move Card</label>
<%=form_for card, url:move_card_list_card_path(card.list, card), method: :put, remote: true do |f|%>
  <p><%= f.select :list_member_id, @board.lists.pluck(:name, :id)%>
  <%= f.submit : Move%>
  </p>
  <%end%>









def move_card
  @card = Card.find(params[:id])
  @list = List.find(params[:card][:])
  @board = @list.board
  @card.list_id = @list.id
  @card.save
  
  respond_to do |format|
    format.html { redirect_to list_card_path(@card)}
    format.js
  end
end








$().remove();







def remove_member
  @card = Card.find(param[:id])
  @user = User.find(param[:id])
  @card.users.where(id: param[:user_id]).destroy_all
  
  respond_to do |format|
    format.html { redirect_to list_card_path(@card)}
    format.js
  end
end

UserMailer.notification_welcome_member_invited_card(@card.user, @card).deliver

<ul id = "card-members-<= card.id %>">
<% card.users.each_with_index do |user, index| %>
  <p id = "new-member-id-update-<%= card.id %>"><%=index+1%>.<%=user.name%> :<%=user.email%></p>
  
<%end%>

</ul>

respond_to do |format|
  format.html { redirect_to list_card_path(@card)}
  format.js
end



resources :cards do
  put :invite_member, on: :member
end


<label>Invite Member </label>
<%= form_for card, url: invite_member_list_card_path(card.list, card), method: :put, remote: true do |f|%>
  <%= f.select :new_member_id, User.pluck(:email, :id)%>
  <%= f.submit :invite %>
<%end%>





<%=%><%=%>

attr_accessor :new_member_id


def invite_member
  @card = Card.find(params[:id])
  @user = User.find(params[:card][:new_member_id])
  @card.users.append(@user)
end


#1. sum of even numbers
# count_even(a)
a=[1, 2, 3]
count_even =0
a.each do |elem|
if elem % 2 ==0
  count_even = count_even + elem
end
end
puts count_even


#2. Return names with 'H' at first letter
a.each do |element|
  if element.first=="H"
  puts element  
end
end

#3. check if a number is prime
Prime.prime?(5) => true
Prime.prime?(4) => false

Prime.each(100) do |prime|
  p prime 
end




Prime.first(10).each do |element|
  if Prime.first(10).include?(element)
    puts true
  else puts false
end


a.each do |element|
  if element.first=="H"
  puts element  
end
end








































def inc(a)
  a = a+1
end
puts inc(4)



a = [ 'ant', 'bee', 'cat', 'dog', 'elk' ] # this is the same:
a = %w{ ant bee cat dog elk }


animals = %w( ant bee cat dog elk ) 
  animals.each {|animal| puts animal }
end




# 1. Returns the elements at even positions
# a = [5,6,7,3]
# => [5,7]  (5 at index 0, 7 at index 2)


a = ('a'..'z').to_a

a.values_at(* a.each_index.select {|i| i.even?})


a.values_at(* a.each_index.select {|i| i.odd?})







#1. Returns the elements at even positions

a = [5,6,7,3]

a.values_at(*a.each_index.select {|i| i.even?})

a.values_at(* a.each_index.select {|i| i.odd?})

# 2. Calculate the fibonaci at n th  (1,1,2,3)
def fibonacci(n)
  if n < 2
    n
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

puts fibonacci(6)

# 3. Count how many number 4 in array

a = [1, 2, 3, 4, 5, 6, 7, 9, 12, 3, 5, 7 ,8 , 2]

a.uniq.each do |x|
  puts "#{x}\t#{a.count(x)}"
end

a.uniq.each do |x|
  puts "#{a.count(4)}"
end









array = ["a", "b", "a", "b", "b"]
count =[]
for i in 0 ... array.uniq.length
  temp_count = 0
  array.collect{|elem| temp_count +=1 if elem == array.uniq[i]}
  count << temp_count
end
p array.uniq, count


L = [1, 2, 3, 4, 5, 6, 7]
li = []
count = 0
for i in L:
    if count % 2 == 1:
        li.append(i)
    count += 1

  
  
    [1, 3, 5, 7, 9]

  
def fibonacci(n)
  if n < 2
    n
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

puts fibonacci(6)



a.each do |x|
  if x % 2 ==0
    puts a.index(x)
  end
end











my_file = File.new("simple_file.txt", "w+")
 my_file.close



immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr



person.keys.each { |k| puts k }



arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + arr[-1]
end

p arr
p new_arr









def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number+1)
  end
end


a = [1, 2, 3], b = [2, 3, 4]





top_file_film = {"Neo" => "1945", "Star_War" => "2000", "WWI" => "1941"}



top_file_film = {"Neo" : "1945", "Star_War" : "2000", "WWI" : "1941"}

top_file_film.each_with_key do |key, value|
  
  Puts "#{key}.{value}"
  
end




y = [1, 2, 3, 4, 5]
y.each do |a|
  a + 1
  puts y '---------------'
end

arr = [1, 3, 5, 7, 9, 11]
arr.each do |element|
  if element == number 
  puts "#{number} is belongs to arr"
end
end
  





z = [1, 2, 3, 4, 5]
z.each do |z|
  x += 1
end

x = [1, 2, 3, 4, 5]
x.each do |c|
  c + 200
end

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 2
end

x = [1, 2, 3, 4, 5]
x.each do |b|
  b + 2
end








names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x -= 1
end







while x >= 0
  puts x
  x = x + 1
  if x >= 23
  break
end

puts "Done!"






i = 0
loop do
  i += 1
  puts i
  break         
end


i = 0
loop do
  i += 2
  puts i
  if i == 10
    break       
  end
end






def equal_to_four(t)
      if t == 4
        puts "yup"
      else
        puts "nope"
    end

    equal_to_four(5)








def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end
def multiply(num1, num2)
  num1 * num2
end

add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5)))






def add_three(n)
  puts n + 3
end
add_three(5).times { puts "will this work?" }



def add_three(n)
  n + 3
end

add_three(5).times { puts 'this should print 8 times'}





def add_three(number)
  return number + 4
  number + 3
end

returned_value = add_three(4)
puts returned_value








def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value











def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")



def say(words)
  puts words.upcase
end

say("today ")











def say(words1="", words2="")
  puts (words1 +" "+ words2)
end
    
say("word1", "word2")












def say(words)
  5.times do
  puts words
end
end

say("hello")




def say(words)
  puts words.upcase
end

say("today "),







y = 0
3.times do
  y += 1
  z = y
end
puts z




y = 0
3.times do
  y += 1
  x = y
end
puts x


array = []
for i in 1..50 do
array.append(i)
end
array
result = 1

array.each do |element|

  result = result*element
end
puts result


result = 1
for i in 1..50 do
  result = result*i
end
puts result



result = 0
for i in 1..100 do
  result = result+i
end
puts result








# factonial
result = 1

a = [1,2,3,4,5]

a.each do |element|
  result=element*result
end
puts result


#1.Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

a=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a.each do |element|

  puts element

end



#2.Same as above, but only print out values greater than 5.
new_array = []
a.each do |element|
  if element > 5
    new_array.append(element)

  end
  
end
new_array

#3.Now, using the same array from 2, use the select method to extract all odd numbers into a new array.

new_array = []
a.each do |element|
  if element % 2 ==1
    new_array.append(element)
  end
end
  new_array
  
