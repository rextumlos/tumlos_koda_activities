# John Rexpearl Tumlos
# Array Exercise #09
# Pig Latin Translator:
# Write a program that translates an array of English words into Pig Latin. The rules for Pig Latin are simple: if a word begins with a consonant, move the consonant to the end and add "ay." If it begins with a vowel, simply add "way" to the end.

#SOLUTION

def pig_latin(word)
  word_arr = word.split("")
  if /^[AaEeIiOoUu]/.match?(word_arr[0])
    return word_arr.join("") + "-way"
  else
    first_letter = word_arr.shift
    word_arr[0] = word_arr[0].upcase
    return word_arr.join("") + "-#{first_letter.downcase}ay"
  end
end

print pig_latin("Manila")