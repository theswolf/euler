def fibo(ran):
    a=1
    b=1
    while(a<ran):
        temp = b
        b+=a
        a=temp
        yield a

sum = 0
for i in fibo(4000000):
    if(i%2==0):
        sum+=i
        print(sum)
