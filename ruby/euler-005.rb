#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#232792560

def divide(limit)
  (3...limit).reverse_each do |divider|
    if (yield % divider != 0)
      return false
    end
  end
end


@found = false
@counter = ARGV[0].to_i;
while(!@found) do
    @found = divide(ARGV[0].to_i){@counter}
    @counter+=ARGV[0].to_i if !@found
    #puts @counter
end

puts @counter
