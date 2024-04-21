employees = {}

# Add employees to the hash
employees[1] = { name: "Ahmed", join_date: "10,2,2018", salary: 3000, department: "frontend" }
employees[2] = { name: "Ali", join_date: "10,2,2020", salary: 5000, department: "backend" }



def add_empolyees(employees)
    puts"enter new id"
    id=gets.chomp
    if employees.key?(id) 
        puts "Employee with ID #{id} is exists."
    else 
    puts"Enter Name of empolyee"
    name=gets.chomp
    puts"Enter date join"
    join_date=gets.chomp
    puts"Enter Salary"
    salary=gets.chomp
    puts"Enter Department"
    department =gets.chomp
   
    employees[id]={name:name,join_date:join_date,salary:salary,department:department}
    puts "Employee with ID #{id} has been added."
    end
end 
def display_empolyees(employees)
    if employees.empty?
    puts "No employees found."
  else
 
        employees.each do |id, details|
            puts "Employee ID: #{id}"
            puts "Name: #{details[:name]}"
            puts "Join Date: #{details[:join_date]}"
            puts "Salary: #{details[:salary]}"
            puts "Department: #{details[:department]}"
            puts "------------------"
    end
end 
end

def update_information(employees)
    puts"Enter the ID of the employee you want to update:"
    id=gets.chomp 
    if employees.key?(id)
    puts "What information would you like to update?"
    puts "Name -> N"
    puts "Salary -> S"
    puts "Join Date -> J"
    puts "Department -> D"
    choice = gets.chomp.upcase
    case choice
    when "N"
      puts "Enter new name:"
      new_name = gets.chomp
      employees[id][:name] = new_name
    when "S"
      puts "Enter new salary:"
      new_salary = gets.chomp
      employees[id][:salary] = new_salary
    when "J"
      puts "Enter new join date:"
      new_join_date = gets.chomp
      employees[id][:join_date] = new_join_date
    when "D"
      puts "Enter new department:"
      new_department = gets.chomp
      employees[id][:department] = new_department
    else
      puts "Invalid choice!"
    end
                   
    else 
        puts "Employee with ID #{id}  is not exists."

    end 
end

def delete_empolyees(employees)
    puts"Enter the ID of the employee you want to delete:"
    id=gets.chomp
    if employees.key?(id)
        employees.delete(id)
    puts "Employee with ID #{id} has been deleted."
    else 
        puts "Employee with ID #{id}  is not exists."

    end 
end

def search_empolyees(employees)
    puts"enter what you need to search "
    puts"1-id"
    puts"2-name"
   xx =gets.chomp.to_i
   case xx
   when 1
    puts"enter id"
    id=gets.chomp.to_i
    if employees.key?(id)
    
        puts "Employee ID: #{id}"
        puts "Name: #{employees[id][:name]}"
        puts "Join Date: #{employees[id][:join_date]}"
        puts "Salary: #{employees[id][:salary]}"
        puts "Department: #{employees[id][:department]}"
        puts "------------------"

   else
    puts"Employee with ID #{id}  is not exists."
    
   end
when 2
    puts "Enter name:"
    name = gets.chomp
    employees.each do |id, details|
      if details[:name].casecmp(name).zero?
        puts "Employee ID: #{id}"
        puts "Name: #{details[:name]}"
        puts "Join Date: #{details[:join_date]}"
        puts "Salary: #{details[:salary]}"
        puts "Department: #{details[:department]}"
        puts "------------------"

      else
     puts "No employee found with the name #{name}."
      end
    end
  else
    puts "Invalid choice!"
end

end

loop do
puts" Choose an option from the menu:"
puts"1- Add"
puts"2- update"
puts"3- delete "
puts"4- display "
puts"5- search"
puts"6- Exit"

cho= gets.chomp .to_i
case cho
when 1

add_empolyees(employees)
when 2
    update_information(employees)
when 3
    delete_empolyees(employees)
when 4
    display_empolyees(employees)
when 5
    search_empolyees(employees)
when 6
    puts "Exiting the program. Goodbye!"
    break
else 
   puts "Invalid choice!"

end 
end