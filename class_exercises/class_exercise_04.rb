# John Rexpearl Tumlos
# Class Exercise 04
# Class for Email Address Validator:
# Create a Ruby class called EmailValidator that can validate email addresses. Implement a method that checks if a given string is a valid email address according to basic email address rules (e.g., contains '@' and '.' in the right places).

class EmailValidator
  attr_accessor :email
  def initialize
    @email = ""
  end

  def valid_email?(email)
    @email = email
    /(\w)+@(\w)+\.(\w)+/.match?(@email)
  end
end

# Create an EmailValidator object
validator = EmailValidator.new

# Check if email addresses are valid
puts validator.valid_email?("john.doe@example.com")  # Should return true
puts validator.valid_email?("invalid.email@")         # Should return false
puts validator.valid_email?("missing@dotcom")        # Should return false
puts validator.valid_email?("@missingusername.com")   # Should return false
puts validator.valid_email?("user@.invalid.com")    # Should return false
puts validator.valid_email?("hello@.invalid@.com")  # Should return false
puts validator.valid_email?("johnrex@gmail.com")    # Should return true