# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)
  # YOUR CODE HERE


 arr.length ==0 ? 0 :  arr.inject{|sum,x| sum + x }

end

def max_2_sum (arr)
  # sort the array, check the length and use it later
sortedarr=arr.sort
arrlength=sortedarr.length
sortedarr.length ==0 ? 0 : sortedarr.length==1 ? sortedarr[0] : sortedarr[arrlength - 1] + sortedarr[arrlength - 2]

end
max_2_sum([2,3,6,99])

def sum_to_n? arr, n
  # YOUR CODE HERE

arr.length==0 || arr.length==1 ? false : arr.combination(2).map{|x,y| x + y }.any? {|z| z==n}? true :false

end
sum_to_n?([1,2,3,4,5],4)
# Part 2

def hello(name)
  # YOUR CODE HERE

return "Hello, " + name
end

def starts_with_consonant?(s)

if /[aeiouAEIOU*]/.match(s[0])
      return false
    elsif /0-9*/.match(s[0])
      return false
    elsif /[^a-zA-Z0-9.*]/.match(s)
      return false
    elsif /^$/.match(s)
      return false
    else
      return true
    end
end

def binary_multiple_of_4? s
#YOUR CODE HERE
is = s.to_i
    if s == "0"
      return true
    elsif /[a-zA-Z^$3-9*]/.match(s)
      return false
    else
      if /^[10]*00$/.match(s) && is % 2 == 0
        return true
      else
        return false
      end
    end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_reader :isbn
attr_accessor :price
def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end
def initialize(isbn,price)
    raise(ArgumentError, "ISBN should not be empty") if isbn==''
    raise ArgumentError.new("Price should not be empty")  if price == ''
    @isbn = isbn
    @price = Float(price)
    raise ArgumentError.new("Price has to be bigger than 0") if price <= 0
end
def price_as_string
return sprintf("$%2.2f", price)
end

end
