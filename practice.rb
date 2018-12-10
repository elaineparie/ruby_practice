require 'pry'
def hello
  puts "hello"
end
hello

def reverse
puts "this is a test string".split(" ").reverse.join(" ")
end
reverse


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


palindrome


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

letter_counter
