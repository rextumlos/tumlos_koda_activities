# John Rexpearl Tumlos
# Exercise 2: Plus One

input_1 = [1, 2, 3]
input_2 = [4, 3, 2, 1]
input_3 = [9]

def plusOne(input)
  num = input.join.to_i
  num += 1
  print num.to_s.split("").map { |str|  str.to_i}
end

plusOne(input_2)