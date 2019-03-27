
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

def interactive_menu
  students = []
  loop do
    #1.print the menu and ask the user what to do
      puts "1. Input the students "
      puts "2. Show the students"
      puts "9. Exit" #9 because we'll be adding more items
      #2.read the input and save it into a variable
      selection = gets.chomp
      #3. do what the user has asked
      case selection
      when "1"
        students = input_students
      when "2"
        print_header
        print(students)
        print_footer(students)
      when "9"
        exit #this will case the program to terminate
      else
        puts "I don't know what you meant, try again"
      end 
    end
  end
=begin
students = input_students
print_header
print(students)
print_footer(students)
=en d


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
