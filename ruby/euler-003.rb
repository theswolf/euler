#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?
def divide(num)
  (2...num/2).each do |divider|
    if num%divider==0
      num/=divider
      puts divider
      break if num <= 1
    end
  end
end

divide(600851475143)
