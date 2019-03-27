def input_students
  puts "Please eter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    if students.count == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
    # get another name from the user
    name = gets.chomp
  end
    # return the array of students
    students
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------".
end

def print(students)
  student_count = 0
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  student_count = student_count + 1
    puts "#{student_count} #{student[:name]} (#{student[:cohort]} cohort)"
    if student[:name][0] == "D"
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
# nothing happens until we call methods
print_header
print(students)
print_footer(students)
