# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0 
  arr.each {|x|
    sum += x
  }
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0 
  arr.max(2).each {|x|
    sum += x
  }
  sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2 
    return false
  else
    i = 0
    arr.each {|x|
      if (arr.include?(n - x) == true) && (i != arr.find_index(n - x))
        return true
      
      end
      i += 1
    }
    false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s[0] =~ /[^aeiou\d\W]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  unless s =~ /^[01]/
    return false
  end
  sum = 0
  num = s.length
  for x in 0..num-1 do
    sum += s[x].to_i*2**(num-1-x)
  end
  if sum % 4 == 0
    return true
  else
    return false
  end
end

# Part 3 

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError.new('Invalid ISBN number') if isbn.length == 0
    raise ArgumentError.new('Price should be more than zero') if price <= 0
    if price >= 0 
      @isbn = isbn
      @price = price
    end
  end

  def price_as_string
    '$%.2f' % @price
  end
end
