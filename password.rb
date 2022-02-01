#Its a importan ruby gem bcrypt link
# https://www.rubydoc.info/github/codahale/bcrypt-ruby/
# https://github.com/bcrypt-ruby/bcrypt-ruby/tree/master
# to instll gem use :- 
# gem install bcrypt

require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

# my_password = BCrypt::Password.create("my password")
# every time the pasword will change when it runs see below:
#=> $2a$12$UmLPVlUfdvr/oyt3hM9xcOFxwSjSjIpb0HBYOSJgNz9AF.ZO2PiWi
#=> $2a$12$jP3hTDibMZF6caQSSSjUvOl7irfumAxDjyhbnHLKKcEFthdLylH3W
#=> $2a$12$5FM/qIBPU37cxYyYiVG0fu.zLMvL/XmVlH8XygP.A/X7Qe9i9fcEe

#see how password have different value each time
my_password = BCrypt::Password.create("my password")
my_password1 = BCrypt::Password.create("my password")
my_password2 = BCrypt::Password.create("my password")

#here we see that the value of my password change each time when it execute.
puts my_password
puts my_password1
puts my_password2

# puts my_password
# puts my_password.version              #=> "2a"
# puts my_password.cost                 #=> 12
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false


#Before this one time we check the store value in my_password and copy and past the password in my .new (password) ..this work on last exceuation or run. the salt funcation is change the password everytime.
# puts my_password = BCrypt::Password.new("$2a$12$dVLLKwpY4VsBtfuxjsWqIeL7HrWE480Q73avn.fsFVjg0j1u4yOGm")
# puts my_password.version              #=> "2a"
# puts my_password.cost                 #=> 12
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false