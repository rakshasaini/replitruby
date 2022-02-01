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
  users_details.each do |user_records|

    user_records[:password] = create_hash_digest(user_records[:password])

    # puts "The user name and password one by one is: "
    # puts "user name is: #{user_records[:username]}"
    # puts user_records[:username]
    # puts "user password is: #{user_records[:password]}"
    # puts user_records[:password]
  end
  users_details
end
puts "The all users details are: "
puts create_users_details(users)

#The value in create_username_users and create_secure_users are same check this:
# puts create_secure_users(users)
# puts create_username_users(users)





# new_password = create_hash_digest("password1111")
# puts new_password
# puts new_password == "password1111"
# puts new_password == "pass123"