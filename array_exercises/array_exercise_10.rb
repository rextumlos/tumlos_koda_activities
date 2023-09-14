# John Rexpearl Tumlos
# Array Exercise #10
# String Parentheses Checker:
# Write a program that checks if a given string containing parentheses (, ), braces {, }, and brackets [, ] is valid (i.e., all opening symbols have corresponding closing symbols in the correct order).

def str_parentheses_checker(strings)
  opening_arr = Array.new
  closing_arr = Array.new
  string_arr = strings.split("")

  string_arr.each do |string|
    if /[(\[{]/.match?(string)
      opening_arr << string
    elsif /[)\]}]/.match?(string)
      closing_arr << string
    end
  end

  if !opening_arr.empty? or !closing_arr.empty?
    closing_arr.reverse!
    opening_arr.each_with_index do | character, index |
      if character == "("
        if character.ord + 1 != closing_arr[index].ord
          return "The string \"#{strings}\" parentheses are not in correct order."
        end
      elsif /[{\[]/.match(character)
        if character.ord + 2 != closing_arr[index].ord
          return "The string \"#{strings}\" parentheses are not in correct order."
        end
      end
    end
    return "The string \"#{strings}\" parentheses are in correct order."
  else
    return "No parentheses in the string."
  end
end

print str_parentheses_checker("Hello (There)")