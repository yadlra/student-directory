
def input_students
  puts "Please enter the names of the students".center(25)
  puts "To finish, just hit return twice".center(25)

  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
      if students.count == 1
        puts "Now we have #{students.count} student".center(25)
      else
        puts "Now we have #{students.count} students".center(25)
      end
    # get another name from the user
    name = gets.chomp
  end
    # return the array of students
    students
end

def print_header
  puts "The students of my cohort at Makers Academy".center(25)
  puts "-------------".center(25)
end

def print(students)
  while students.count > 0 do
    students.each do |student|
      puts "#{student[:name]} (#{student[:cohort]} cohort)".center(25)
    end
    break
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(25)
end

students = input_students
print_header
print(students)
print_footer(students)

=begin
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, height: 175},
  {name: "Darth Vader", cohort: :november, height: 167},
  {name: "Nurse Ratched", cohort: :november, height: 156},
  {name: "Michael Corleone", cohort: :november, height: 178},
  {name: "Alex DeLarge", cohort: :november, height: 185},
  {name: "The Wicked Witch of the West", cohort: :november, height: 167},
  {name: "Terminator", cohort: :november, height: 192},
  {name: "Freddy Krueger", cohort: :november, height: 175},
  {name: "The Joker", cohort: :november, height: 180},
  {name: "Joffrey Baratheon", cohort: :november, height: 167},
  {name: "Norman Bates", cohort: :november, height: 176}
]
=end
