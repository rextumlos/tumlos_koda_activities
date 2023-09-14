# John Rexpearl Tumlos
# Conditional Exercise 08
# BMI Calculator:
# Create a program that calculates the Body Mass Index (BMI) based on a person's height and weight and provides a classification (underweight, normal weight, overweight, or obese).

def bmi_calculator(bmi)
  case bmi
  when 0...18.5
    return "Underweight"
  when 18.5...25
    return "Normal Weight"
  when 25...30
    return "Overweight"
  else
    return "Obese"
  end
end

print bmi_calculator(22)