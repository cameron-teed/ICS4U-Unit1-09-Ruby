##
# Generates random numbers and stores them in an
# an array and out puts the marks and the averages
#
# @author  Cameron Teed
# @version 1.0
# @since   2021-05-03
# frozen_string_literal: true

def average_calc(array_marks)
  # Sets counter to 0
  first_counter = 0
  # Sets the total marks to 0
  total_marks = 0
  # Take the 2d array and multiplies its width * length
  div_value = array_marks.size.to_i * array_marks[first_counter].size.to_i
  # Starts loop for how many dimensions are in the array

  while first_counter != array_marks.size

    # Sets counter to 0
    second_counter = 0
    # Starts loop for how many elements are in the aray dimensions

    while second_counter != array_marks[first_counter].size

      # Adds the mark to the total marks
      total_marks += array_marks[first_counter][second_counter].to_i
      # Adds one to counter
      second_counter += 1
    end
    # Adds one to counter
    first_counter += 1
  end
  # Takes average of the whole classes marks
  total_marks / div_value
  # Returns the average
end
# Begins loop

# Declares how many students are in the array
student_marks = 6
# Declares how many marks these students have
number_students = 4
# Creates an 2d array
array_marks = Array.new(number_students) { Array.new(student_marks) }
# Sets counter to 0
first_counter = 0

# Starts loop for how many dimensions are in the array
while first_counter < number_students

  # Prints out the the student number
  puts
  puts "Student Number: #{first_counter + 1}"
  # Sets counter to 0
  second_counter = 0
  # Starts loop for how many elements are in the aray dimensions

  while second_counter < student_marks

    # Adds random number 0-100 into the array
    array_marks[first_counter][second_counter] = rand(0..100)
    # Prints out the random number
    puts array_marks[first_counter][second_counter]
    # Adds one to counter
    second_counter += 1
  end
  # Adds one to counter
  first_counter += 1
end

# Calls on the function and stores the average in mark_average
mark_average = average_calc(array_marks)

# Prints out the class average
puts
puts
puts "Class Average: #{mark_average}"
puts
puts 'Done'
