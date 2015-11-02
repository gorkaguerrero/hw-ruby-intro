# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  suma = 0
  
  for i in (0..arr.count-1)
    suma += arr[i]  
  end
  return suma
end

def max_2_sum arr
  suma = 0
  arr.sort! {|x, y| y <=> x}
  
  if arr.count == 0
    return suma
  elsif arr.count == 1
    return arr[0]
  else 
    return arr[0]+arr[1]
  end
end

def sum_to_n? arr, n
  suma = false

  if arr.count == 0
    return false
  elsif arr.count == 1
    return false
  else 
    for i in (0..arr.count-2)
      for j in (i+1..arr.count-1)
        if (arr[i]+arr[j] == n)
          return true
        end
      end
    end
    return false
    
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  m = s.capitalize
  if s.length == 0
    return false
  end
  
  if 'BCDFGHJKLMNPQRSTVWXYZ'.include?(m[0])
    return true
  else
    return false
  end
  
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  end
  
  if s =~ /^[01]*$/
    n = s.to_i(2)
    return (n%4 == 0)
    
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.length != 0
      @isbn = isbn
    else
      raise ArgumentError.new("'#{isbn}' is not valid")
    end
    if price > 0
      @price = price
    else
      raise ArgumentError.new("'#{price}' is not valid")
    end    
  end
  
  def price= (p)
    @price = p
  end
  
  def isbn= (i)
    @isbn = i
  end
  
  def price
    return @price
  end
  
  def isbn
    return @isbn
  end
  
  def price_as_string
    return "$#{format("%.2f", @price)}"
  end
  
end
