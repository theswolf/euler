#The sum of the squares of the first ten natural numbers is,
#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,
#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


def difference(limit)
  @sum_of_square=0;
  @square_of_sum=0;
  (1..limit).each do |looper|
      puts looper
      @sum_of_square+=looper*looper
      @square_of_sum+=looper
  end
  puts @sum_of_square
  puts @square_of_sum*@square_of_sum
  return (@square_of_sum*@square_of_sum) - @sum_of_square
end

@result = 1
@result = difference(ARGV[0].to_i)
puts @result
