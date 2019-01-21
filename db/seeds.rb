# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
1.times do |user|
	User.create!(
		email: "ceresveres@gmail.com",
		username: "ceres",
		password: "password",
		password_confirmation: "password"
	)
end

puts "1 user created"


5.times do |wiki|
	Wiki.create!(
		title: 	"Sample wiki #{wiki}",
		body: 	"This is a few sample text to describe the wiki",
		user_id: User.first.id
	)
end

puts "5 wikis created"