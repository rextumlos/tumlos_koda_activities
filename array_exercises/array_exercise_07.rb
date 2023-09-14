# John Rexpearl Tumlos
# Array Exercise #07
# Write a method to check if a given string is a palindrome. Test it with an array of strings and return an array of palindromes.

given_string = "racecar"

# SOLUTION
def check_palindrome(string)
  arr = string.split("")
  reversed = arr.reverse
  if arr == reversed
    return "#{string} is a palindrome."
  else
    return "#{string} is not a palindrome."
  end
end

print check_palindrome(given_string)