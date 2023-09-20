# John Rexpearl Tumlos
# Exercise 7 - Climbing Stairs

# I created this code like solving a fibonacci sequence as we are only getting the total steps because I saw a resemblance of it.

input_1 = 2
input_2 = 3
input_3 = 4

# n = 5
# [
#   [1, 1, 1, 1, 1],
#   [2, 1, 1, 1],
#   [1, 2, 1, 1],
#   [1, 1, 2, 1],
#   [1, 1, 1, 2],
#   [2, 2, 1],
#   [2, 1, 2],
#   [1, 2, 2],
# ]
# n = 5, total_step_patterns = 8
# n = 1: 1, =2: 2, =3: 3, =4: 5, =5: 8

def climbStairs(n)
  index = 0
  result = Array.new

  while index < n
    if result.empty?
      result << 1
    else
      if result.length == 1
        result << result[index - 1] + result[index - 1]
      else
        result << result[index - 1] + result[index - 2]
      end
    end
    index += 1
  end

  result[-1]
end

print climbStairs(input_3)