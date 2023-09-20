# John Rexpearl Tumlos
# Exercise 1: Length of Last Word

def lengthOfLastWord(input)
  str_array = input.split(" ")
  puts "The last word is \"#{str_array[-1]}\" with length #{str_array[-1].length}."
end


input_1 = "Hello World"
input_2 = "   fly me   to   the moon  "
input_3 = "luffy is still joyboy"
lengthOfLastWord(input_2)