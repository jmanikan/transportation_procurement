# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# user = [
#   {
#     company: "Christopher Booty",
#     email: "chris@example.com",
#     password: "password",
#     password_confirmation: "password"
#   },
#   {
#     company: "Paul Bamberg",
#     email: "paul@example.com",
#     password: "password",
#     password_confirmation: "password"
#   }
# ]
#
# users.each do |user|
#   User.create user
# end

User.create!(company:  "Example Carrier",
             email: "sample_carrier@example.com",
             password:              "password",
             password_confirmation: "password",
             role: "carrier")

99.times do |n|
  company  = Faker::Company.company
  email = "sample-#{n+1}@example.com"
  password = "password"
  role = "carrier"
  User.create!(company: company,
               email: email,
               password:              password,
               password_confirmation: password,
               role: role)
end
