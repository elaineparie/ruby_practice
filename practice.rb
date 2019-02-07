require 'pry'
def hello
  puts "hello"
end
hello

def reverse
puts "this is a test string".split(" ").reverse.join(" ")
end
# reverse


# 2. given a word output true if it's a palindrome and false if it is not
# NOTE: you cannot use the reverse method
# hannah, racecar, tacocat all are palindromes
# aaaaaz , aaaaza not palindromes

def palindrome
  letter_array = []
  counter = []
  i = 0
  x = -1
  letter_array = "racecar".split("")
  while i < letter_array.length
      if letter_array[i] == letter_array[x]
        counter = i += 1
        x = x - 1
      else
        break
      end
    end
      if i == letter_array.length
        puts "this is true"
      else
        puts "this is false"
      end
  end


# palindrome


# 1. split sentence into characters
# 2. iterate through the array
# 3. store each letter in a hash
# 4. if this letter exists in the hash we increment it
# 5. at the end return the hash

def letter_counter
  array = []
  hash = {}
  array = "this is a test string".split("")

  array.each do |letter|
    if letter != " "
      if hash[letter]
        hash[letter] += 1
      else
        hash[letter] = 1
      end
    end
  end
puts hash


end

# letter_counter


# 4. given an index N find the value at N in the fibonacci sequence recursively
# fib sequence: 1,1,2,3,5,8,13,21
# indices: 1,2,3,4,5,6,7 ,8



def fib(index)
  if index == 1
    return 1
  elsif index == 0
    return 0
  else
    return fib(index - 1) + fib(index - 2)
  end
end

# puts fib(5)


# 5. given a number N where 1 billion > N > 0, n is a whole number
# output N in words
# ie: 3984756
# output: three million nine hundred eighty four thousand seven hundred fifty six



# def say_number(number)
#   i = 0
#   q = number / 1000
#     while q > 0
#       i ++
#       q = q / 1000
#   end
# end
#
#  def units(index)
#    units = {
#     '5': 'million',
#     '4': 'thousand',
#     '3': 'hundred'
#    }
#   puts units[index.to_s]
#  end
#
#  puts units(5)

#
#
# def teens(ones)
#   teens_map = {
#     '0': 'ten',
#     '1': 'eleven'
#     ...
#     '9': 'nineteen'
#   }
#   teens_map[ones.to_s]
# end
# say_number(1)



# FizzBuzz
#
# The task is to print out the numbers 1 through 100, except in the following cases:
#
#   1. If the number is divisible by 3, print Fizz
#
#   2. If the number is divisible by 5, print Buzz
#
#   3. If the number is divisible by 3 and 5, print FizzBuzz
#
# You can write the solution in any language. Example output:
#
# 1
# 2
# Fizz
# 4
# Buzz
# Fizz
# 7
# ...
# 14
# FizzBuzz
# 16
# ...
#
# Compare your results against `output.txt`.

def fizzbuzz
  (1..100).each do |number|
    if number % 3 == 0
      puts "Fizz"
    elsif number % 5 == 0
      puts "Buzz"
    elsif number % 3 == 0 && number % 5 == 0
      puts "FizzBuzz"
    else
    puts number
    end
  end
end

# fizzbuzz


# Given 3 integers how do you find the middle number?



def find_middle (num1, num2, num3)
  puts [num3, num2, num1].sort()[1]
end

# find_middle(15, 10004838, 7)


def military_time(standard_time)
  if standard_time.include?('a')
      standard_time = standard_time.gsub!(":", ".")
      standard_time = standard_time.split('a')[0].to_f
      # standard_time = standard_time[0]
      # standard_time = standard_time.to_f
      military_time = standard_time + 12
      military_time = military_time.to_s.gsub!(".", ":")
      military_time
end

end
puts military_time("8:21am")


def custom_join(array)
  array.map do |word|
      if array.index(word) != array.index(array[-1])
        print word + ','
      else
        print word
    end
  end

end
array = ["hi", "hello", "hey"]
# custom_join(array)

# Given n people, find total number of pairs can be formed.  

def pairs(n)
  n * (n - 1)/2
end


puts pairs(100)


# pi * r squared
def area_of_circle(radius)
  area = Math::PI * (radius ** 2)
  puts area
end

area_of_circle(3)
