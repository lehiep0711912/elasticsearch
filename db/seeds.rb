# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do |n|
	name = Faker::Name.name
	author = Faker::Name.name
	des = "sach de test #{n+1}"
	category_ids = [1,3]
	Book.create(
		name: name,
		author: author,
		des: des,
		category_ids: category_ids
	)
end	