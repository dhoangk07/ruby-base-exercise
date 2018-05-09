def multip_prime(x)
  require "prime"
  if x.prime? == true
    puts "#{x*1}"
  else
    arr = (1..x).select { |n| x % n == 0}
    result = []
    arr.each do |elem|
      if elem.prime? == true
        result << elem
      end
    end
    result# .each do |element|
#       ele = element * element
#       arr_divisor = x.divmod(ele)
#
#     end
#     "#{x = ele * arr_divisor[0]}"
  end
end


multip_prime(300)
