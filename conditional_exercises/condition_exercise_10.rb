# John Rexpearl Tumlos
# Conditional Exercise 10
# Palindrome Checker:
# Create a program that takes a string as input and checks if it's a palindrome (reads the same forwards and backwards) and prints the result.

def is_palindrome(string)
  reversed = string.reverse
  return string == reversed ? "Palindrome" : "Not a palindrome"
end

print is_palindrome("HellolleH")