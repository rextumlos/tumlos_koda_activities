# John Rexpearl Tumlos
# Conditional Exercise 01
# Even or Odd:
# Write a program that takes an integer as input and prints whether it's even or odd.

def even_or_odd(integer)
  return integer % 2 == 0 ? "Even" : "Odd"
end

print even_or_odd(1)