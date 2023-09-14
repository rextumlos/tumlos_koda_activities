# John Rexpearl Tumlos
# Hash Exercise #04
# Sorting by Age
#
# You are given a hash where keys are names, and values are ages. Write a Ruby program to sort the hash by age in ascending order and return an array of name-age pairs sorted by age.
#
# For example, given the following hash:
ages = {
  "Alice" => 30,
  "Bob" => 25,
  "Charlie" => 35,
  "David" => 28,
  "Eve" => 32
}
# Your program should produce the following sorted array:
# [
#   ["Bob", 25],
#   ["David", 28],
#   ["Alice", 30],
#   ["Eve", 32],
#   ["Charlie", 35]
# ]

def sort_by_age(people)
  return people.sort_by { | key, value| value}
end

print sort_by_age(ages)