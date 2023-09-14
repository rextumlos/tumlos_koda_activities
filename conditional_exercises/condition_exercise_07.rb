# John Rexpearl Tumlos
# Conditional Exercise 07
# Month Name:
# Write a program that takes a number representing a month (1-12) and prints the name of the month.

def month_name(month)
  case month
  when 1
    return "January"
  when 2
    return "February"
  when 3
    return "March"
  when 4
    return "April"
  when 5
    return "May"
  when 6
    return "June"
  when 7
    return "July"
  when 8
    return "August"
  when 9
    return "September"
  when 10
    return "October"
  when 11
    return "November"
  when 12
    return "December"
  else
    return "Invalid input."
  end
end

print month_name(2)