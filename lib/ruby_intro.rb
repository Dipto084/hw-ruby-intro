# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum(0)
end

def max_2_sum arr
  return arr.max(2).sum(0)
end

def sum_to_n? arr, n
  return arr.combination(2).map {|v| v.sum()}.include? (n)
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return s.downcase.start_with?(/[a-z]/) && s.downcase.start_with?(/[^aeiou]/)
end

def binary_multiple_of_4? s
  if s.match?(/[^10]/)
    return false
  elsif s == ""
    return false
  else
    dec = 0
    s.split(//).reverse.map.with_index do |d, i|
        dec += d.to_i*(2**i)
    end
    if dec%4 == 0
        return true
    else
        return false
    end
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price) 
    if isbn != ""
      @isbn = isbn
    else
      raise ArgumentError
    end
    
    if price > 0
      @price = price
    else
      raise ArgumentError
    end
  end
  
  def price_as_string
    
    return "$%.2f" %self.price.to_f
    
  end
  
end
