# John Rexpearl Tumlos
# Iteration Exercise 01
# Using for Loop
# Write a Ruby program that uses a for loop to find the sum of all even numbers from 1 to 50.

sum = 0
for num in 1..50
  num % 2 == 0 ? sum += num : next
end

print sum