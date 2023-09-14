# John Rexpearl Tumlos
# Iteration Exercise 03
# Using while Loop
# Write a Ruby program that uses a while loop to print the Fibonacci sequence up to the first 10 terms.

n_times = 10

def fibonacci(num)
  index = 0
  result = Array.new

  while index < num
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

  return result
end

print fibonacci(n_times)