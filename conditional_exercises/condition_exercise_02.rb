# John Rexpearl Tumlos
# Conditional Exercise 02
# Maximum of Three Numbers:
# Create a program that takes three numbers as input and prints the maximum of the three.

def get_max(a, b, c)
  if a > b and a > c
    return a
  elsif b > a and b > c
    return b
  else
    return c
  end
end

print get_max(3, 6, 3)