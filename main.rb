puts "Hello, Ruby World!"
class Student
  attr_accessor :first_name, :last_name, :email, :user_name, :password

  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @user_name = username
    @password = password
  end

  def to_s
    # "First Name is #{@first_name}, Last Name #{@last_name}, E-Mail id is: #{@email}, User Name: #{@user_name}, Password is: #{@password} "

    "First Name is #{@first_name}, Last Name #{@last_name}, E-Mail id is: #{@email}, User Name: #{@user_name}"
  end
end

ram = Student.new("Ram Sahay", "Saini", "ramsahaysaini1@gmail.com", "ramsahay1", "password1")
raksha = Student.new("Raksha" , "Kumar", "irk@gmail.com", "rak1", "pass1")
puts ram 
puts raksha
ram.last_name = raksha.first_name
puts "ram sahay last name is alter"
puts ram 