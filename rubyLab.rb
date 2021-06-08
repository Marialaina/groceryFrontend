def stringCharacter(theString)
  if theString.length > 10
    return  "too long"
  elsif (theString.length <= 10 && theString.length >= 5 )
    return  "just right"
  elsif theString.length < 5
    return "too short"
  end 
end

# puts stringCharacter("dog")

# me = {:name => "marialaina", 1 => true , :doyouhaveadog => "yes"}

def counting
    for i in 0..10 do
        if i == 1
            puts "#{i}st time through"
        elsif i == 2
            puts "#{i}nd time through"
        elsif i == 3
            puts "#{i}rd time through"
        else
            puts "#{i}th time through"
        end
    end
end
# counting()

# for i in 20..40 do
# 	puts i
# end

# RUBY VS JAVASCRIPT
def get_name()
    puts "What is your name?"
    name = gets.chomp
end
# puts get_name()

# RUBY BASICS PRACTICE
# puts "Hello World"

# 2) Interpolate the adjectivevariable into the Hello World string using #{}

adjective = "Big Bad"

# puts "Hello #{adjective} World"

# 3) Save "Hello World" to a variable. Without changing the letters in your code manually, permanently change "Hello World" to all uppercased letters.

hello = "Hello World"

# puts hello.upcase

# NUMS ARRAY AND ENUMERABLES
# nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]

# 1) Use .uniq to print the array with all duplicate entries removed
# puts nums.uniq

# 2) Next, use .pushand .pop, .shift .unshiftand .lengthon the array as you would with javaScript (if you need to add a number, add 5)
# puts nums.push(5)
# struggling to understand what pop does.
# puts nums.pop
# puts nums.shift
# puts nums.length

# 3) Use .include? to check if the array contains the number 8
# puts nums.include?(8)

# puts nums.find_all { |i| i > 10 }

# 5) use .all? to check if all the numbers are greater than 0?
# puts nums.all?(0)

# 6) use any ?to check if there are any numbers that are divisible by 8
# puts nums.any? { |i| i / 8 }

# 7) use .count to let you know how many numbers are greater than 4
# puts nums.count {|i| i > 4}

# 8) use .each_with_index to print each item times its index
# nums.each_with_index { |num, i| p num * i}

# 9) .find the number that is divisible by 7 and 5 and is greater than 0
    # puts nums.find { |i| i / 7  && i / 5 && i > 0}

# 10) .find_index of the number that is divisible by 5 and 7 and is greater than 0
# puts nums.find_index(5)
# puts nums.find_index {|i| i / 5 && i / 7 && i > 0}
# puts nums.find_index {|i| i % 5 && i % 7 && i > 0}

# 11) return the .first 3 numbers
# puts nums.first(3)

# 12) return the .last5 numbers
# puts nums.last(5)

# 13 ) .group_bythe modulo of 3 ( % 3)
# not sure what this method does
# puts nums.group_by {|i| i % 3}

# 14) use minmaxto return the smallest and largest number
# puts nums.minmax
# nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]


# 15) use .reject to return all the numbers that are NOT divisible by 3
# puts nums.reject { |i| i % 3 == 0 }

# 16) use .select to return all the numbers divisible by 5
# puts nums.select { |i| i % 5 == 0  && i > 0}

# COLOR ARRAY
colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

# 1) Print out a random color.
# puts colors.sample()

# 2) Print out the colorsarray in reverse order.
# puts colors.reverse()

# 3) Print out all of the colors in the array with all capital letters.
#  colors.each {|n| puts n.upcase()}

# COLORS
# 1) Write a method named find_areathat finds the area of a rectangle when given values for width and height
def find_area height, width
   return area = (0.5) * (height * width)
end
#  puts find_area(2, 2)

# 2) Write a method named multiply_each_by_fivethat will loop over the given numsarray below and print each number multiplied by 5
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]
def multiply_each_by_five(nums_array)
   return nums_array.each {|n| puts n * 5 }
end
# puts multiply_each_by_five(nums)

############# METHODS WITH HASHES
# Hashes
book = {
  title: 'The Great Gatsby',
  author: 'F Scott Fitzgerald',
  year: 1925,
  price: 10
}

lamp = {
  type: 'reading',
  brand: 'Ikea',
  price: 25
}

table = {
  type: 'bed side',
  brand: 'Crate & Barrel',
  color: 'birch',
  price: 50
}
# puts table[:price]

# 1) Write a method named print_price that will take in any hash and return the price of the item.
def print_price the_price
  return  the_price[:price]
end
# puts print_price(lamp)

# 2) Write a method named print_item_sums that will take in two hashes and will return the sum of the prices for the items in the hashes.
def print_item_sums price_1, price_2
    return price_1[:price] + price_2[:price]
end
# puts print_item_sums(book, lamp)

############  SOLVING PROBLEMS WITH RUBY
#EULER PROBLEM 1
# newArr
# (1..100).each do |n|
#     puts n if n % 5 == 0 || n % 3 == 0
# end 

newArr = []
(1..1000).each { |n| newArr << n if n % 5 == 0 || n % 3 == 0 }
# puts newArr.inject(0, :+)

############## PRIMES
# 1) Write a method called check_prime? that will test whether a number is Prime. The method will return true if Prime, false if not.
def check_prime num
 require 'prime'
    return Prime.prime?(num)
end
# puts check_prime(100)

# 2) Write another method called get_primes that will print all the Primes up to an arbitrary limit. For example, if you invoke your method with get_primes 100, it will print all the Prime numbers up to and including 100.
def get_primes
primeArr = []
require 'prime'
(1..100).each { |n| primeArr << n if Prime.prime?(n) == true }
return primeArr
end
# puts get_primes
