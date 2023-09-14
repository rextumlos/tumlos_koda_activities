# John Rexpearl Tumlos
# Iteration Exercise 07
# Using times Loop
# Create a Ruby program that uses the times loop to generate a multiplication table for a given number (up to 10 times).

def multiplication_generator(num)
  10.times do |n|
    puts (n + 1) * num
  end
end

multiplication_generator(5)