# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  arr.each { |x| result += x }
  result
end

def max_2_sum arr
  arr.empty? ? 0 : arr.count == 1 ? arr[0] : arr.sort.reverse[0] + arr.sort.reverse[1]
end

def sum_to_n? arr, n
  found = false
  arr[0..arr.length-1].each_with_index { |x,i1|
    arr[i1+1..arr.length].each_with_index { |y,i2|
      found = found ? found : x + y == n
    }
  }
  return found
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  (s[0] =~ /[a-zA-Z]/ and s.length > 0) ? !(["A","E","I","O","U"].include? s[0].upcase) : false
end

def binary_multiple_of_4? s
  (s =~ /^[01]+$/ ? s.to_i(2) % 4 == 0 : false)
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    price > 0 ? @price = price : (raise ArgumentError.new("Only numbers are allowed"))
    isbn.length > 0 ? @isbn = isbn : (raise ArgumentError.new("ISBN must be non-empty"))
  end
  
  def price
    @price
  end
  
  def isbn
    @isbn
  end
  
  def price=(value)
    @price = value
  end
  
  def isbn=(value)
    @isbn = value
  end
  
  def price_as_string
    "$#{'%.2f' % @price}"
  end
  
end
