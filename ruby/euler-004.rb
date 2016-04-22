#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.
#906609
@max=0
def generate
  (100...999).each do |a|
    (a...999).each do |b|
      palindrome {a*b }
    end
  end
end

def palindrome
  if yield.to_s == yield.to_s.reverse
    @max = yield > @max ? yield : @max
  end
end

generate
puts @max
