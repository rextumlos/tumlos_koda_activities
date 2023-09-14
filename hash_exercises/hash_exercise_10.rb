# John Rexpearl Tumlos
# Hash Exercise #10
# Create a student scores directory using hashes. SELF-CREATED EXERCISE
require 'json'
$json_location = './students.json'
file = File.read($json_location)
$data_hash = JSON.parse(file)

# Display all students in string with newline
def get_all_students_info
  display_all_students = ""
  $data_hash.each_with_index do |student, index|
    display_all_students += "#{index + 1}.\n"
    student.each do |key, value|
      display_all_students += "#{key}: #{value}\n"
    end
    display_all_students += "\n"
  end

  return display_all_students
end

# Getting info of a student using name
def get_student_info_by_name(name)
  $data_hash.each do |student|
    if student["name"] == name
      return student
    end
  end

  return "No student named #{name}."
end

# Adding a student info as hash
def add_student_info(new_data)
  $data_hash << new_data
  File.write($json_location, JSON.dump($data_hash)).then do
    return "Added successfully."
  end
end

# Updating a student info using name as hash
def update_student_info(name, updated_data)
  is_found = false
  $data_hash.each do |student|
    if student["name"] == name
      updated_data.each do |key, value|
        student[key.to_s] = value
      end
      is_found = true
      break
    end
  end

  if is_found
    File.write($json_location, JSON.dump($data_hash)).then do
      return "Student #{name}'s info has been updated successfully."
    end
  else
    return "No student named #{name}."
  end
end

# Deleting a student info using name
def delete_student_info(name)
  is_found = false
  $data_hash.each_with_index do |student, index|
    if student["name"] == name
      is_found = true
      $data_hash.delete_at(index)
    end
  end

  if is_found
    File.write($json_location, JSON.dump($data_hash)).then do
      return "Student #{name}'s info has been deleted successfully."
    end
  else
    return "No student named #{name}."
  end

end

# print get_all_students_info()                   # Getting all students info
# print get_student_info_by_name("Rex")           # Getting a student info using name

new_student = {
  "name": "Rex",
  "gender": "Male",
  "physics": 99,
  "maths": 99,
  "english": 99
}
# print add_student_info(new_student)             # Adding new student

updated_info = {
  "name": "Rex",
  "gender": "Male",
  "physics": 81,
  "maths": 81,
  "english": 81
}
# print update_student_info("Rex", updated_info)  # Updating a student info using name
# print delete_student_info("Rex")                # Deleting a student info