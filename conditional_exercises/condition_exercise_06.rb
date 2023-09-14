# John Rexpearl Tumlos
# Conditional Exercise 06
# Number Sign:
# Create a program that takes a number as input and prints whether it's positive, negative, or zero.

def number_sign(number)
  if number > 0
    return "Positive"
  elsif number < 0
    return "Negative"
  else
    return "Zero"
  end
end

print number_sign(-1)