# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Item.destroy_all

1.times do |user|
	User.create!(
							email:'user@test.com',
							password: 'test123',
							password_confirmation: 'test123'
		)
end

puts '1 user@test.com seeded. PW: test123'

4.times do |item|
	Item.create!(
							content: "item #{item}",
							position: item,
							user_id: 1
		)
end
puts "4 items seeded"