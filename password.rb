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

my_password = BCrypt::Password.create("my password")
# every time the pasword will change when it runs see below:
#=> $2a$12$UmLPVlUfdvr/oyt3hM9xcOFxwSjSjIpb0HBYOSJgNz9AF.ZO2PiWi
#=> $2a$12$jP3hTDibMZF6caQSSSjUvOl7irfumAxDjyhbnHLKKcEFthdLylH3W
#=> $2a$12$5FM/qIBPU37cxYyYiVG0fu.zLMvL/XmVlH8XygP.A/X7Qe9i9fcEe

puts my_password
puts my_password.version              #=> "2a"
puts my_password.cost                 #=> 12
puts my_password == "my password"     #=> true
puts my_password == "not my password" #=> false

# my_password = BCrypt::Password.new("$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey")
# my_password == "my password"     #=> true
# my_password == "not my password" #=> false