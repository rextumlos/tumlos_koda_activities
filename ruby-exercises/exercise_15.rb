# John Rexpearl Tumlos
# Exercise 15 - Nim Game

def canWinNim(n)
  turns = 0

  if n > 5
    return true
  end

  while n != 0
    if n - 3 >= 0
      n -= 3
      turns += 1
    elsif n - 2 >= 0
      n -= 2
      turns += 1
    elsif n - 1 >= 0
      n -= 1
      turns += 1
    end
  end

  if turns % 2 == 0
    false
  else
    true
  end
end

input_1 = 4
input_2 = 4

print canWinNim(input_2)