# John Rexpearl Tumlos
# Conditional Exercise 09
# Vowel or Consonant:
# Write a program that takes a single character as input and prints whether it's a vowel or a consonant.

def vowel_or_consonant(letter)
  if /[AaEeIiOoUu]/.match(letter)
    return "Vowel"
  else
    return "Consonant"
  end
end

print vowel_or_consonant("d")