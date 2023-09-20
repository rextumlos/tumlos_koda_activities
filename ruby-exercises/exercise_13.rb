# John Rexpearl Tumlos
# Exercise 13 - Ugly Number

input_1 = 6
input_2 = 1
input_3 = 24

def isUgly(n)
  puts n

  if n % 5 == 0
    n /= 5
    isUgly(n)
  elsif n % 3 == 0
    n /= 3
    isUgly(n)
  elsif n % 2 == 0
    n /= 2
    isUgly(n)
  else
    if n == 1
      true
    else
      false
    end
  end

end

print isUgly(input_3)