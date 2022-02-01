require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

def create_hash_digest(pass)
  BCrypt::Password.create(pass)
end

new_password = create_hash_digest("password1111")

puts new_password
puts new_password == "password1111"
puts new_password == "pass123"