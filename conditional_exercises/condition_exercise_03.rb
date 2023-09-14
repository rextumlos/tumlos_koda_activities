# John Rexpearl Tumlos
# Conditional Exercise 03
# Leap Year Checker:
# Write a program that checks if a given year is a leap year and prints the result.

def check_leap_year(year)
  return year % 4 == 0 ? "It is a leap year." : "It is not a leap year."
end

print check_leap_year(2016)