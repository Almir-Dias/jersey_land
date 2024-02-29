# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



require 'faker'
Shirt.destroy_all
User.destroy_all
user_almir = User.new(email:'almir@gmail.com', encrypted_password:123456, password:123456)
user_almir.save!



3.times do
  male_shirt =  Shirt.new(team: Faker::Sports::Football.team, gender:'Male' , size:'G', price: Faker::Number.decimal(l_digits: 2, r_digits: 2))
  male_shirt.user = user_almir
  male_shirt.save!  
end

  
3.times do
 female_shirt = Shirt.new(team: Faker::Sports::Football.team, gender:'Female' , size:'M', price: Faker::Number.decimal(l_digits: 2, r_digits: 2))
  female_shirt.user = user_almir
  female_shirt.save! 
end