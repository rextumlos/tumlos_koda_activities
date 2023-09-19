# John Rexpearl Tumlos
# Exercise 11 - Power of Two

input_1 = 1
input_2 = 16
input_3 = 32

def isPowerOfTwo(n)
  if n % 2 == 0
    n /= 2
    isPowerOfTwo(n)
  elsif n == 1
    return true
  else
    false
  end
end

print isPowerOfTwo(input_3)