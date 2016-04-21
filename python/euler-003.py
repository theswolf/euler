#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?
def divide(num):
    for i in range(2,num):
        if(num%i==0):
            while(num%i==0):
                num/=i
                #yield str(num)+" "+str(i)
            yield i
        if(num==1): break

for i in divide(600851475143):
    print(i)
