require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

users = [
        {username: "Ram", password: "pass1"},
        {username: "Raksha", password: "pass2"},
        {username: "jony", password: "passjony"},
        {username: "love", password: "care"}
]

def create_hash_digest(pass)
  BCrypt::Password.create(pass)
end

def create_hash_verify(password)
  BCrypt::Password.new(password)
end

# def create_secure_users(list_of_users)
#   list_of_users.each do |user_records|
#     puts user_records[:password]
#   end
# end
# create_secure_users(users)
# puts "done password"


#get the list of username
def create_users_details(users_details)
  puts "Now User Names:"
  users_details.each do |user_names|
    puts user_names[:username]
  end
  puts "Now Passwords"
  users_details.each do |user_pass|
    puts user_pass[:password]
  end
end
puts "The all users are"
create_users_details(users)

#The value in create_username_users and create_secure_users are same check this:
# puts create_secure_users(users)
# puts create_username_users(users)





# new_password = create_hash_digest("password1111")
# puts new_password
# puts new_password == "password1111"
# puts new_password == "pass123"