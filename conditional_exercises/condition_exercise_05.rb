# John Rexpearl Tumlos
# Conditional Exercise 05
# Age Classifier:
# Write a program that classifies a person's age into categories such as infant, child, teenager, adult, or senior citizen based on their age.

def age_classifier(age)
  case age
  when 0..3
    return "Infant"
  when 4..12
    return "Child"
  when 13..17
    return "Teenager"
  when 18..59
    return "Adult"
  else
    return "Senior Citizen"
  end
end

print age_classifier(60)