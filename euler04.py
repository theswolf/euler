#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome(str):
    ret = True
    for i in range(len(str)):
        # 0 -1  1 -2 2 -3
        ret&=str[i]==str[i*-1 -1]
        if(ret==False):
            break
    return ret

print(palindrome("sidis"))
print(palindrome("ipercoop"))