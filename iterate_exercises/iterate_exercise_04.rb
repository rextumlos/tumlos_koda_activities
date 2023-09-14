# John Rexpearl Tumlos
# Iteration Exercise 04
# Using until Loop
# Create a Ruby program that uses an until loop to reverse a given string without using the reverse method.

def reverse(string)
  arr = string.split("")
  reversed = Array.new

  until arr.length == 0
    reversed << arr.pop
  end

  return reversed.join("")
end

print reverse("Hello")