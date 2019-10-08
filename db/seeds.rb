# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
city = City.new(name:"San Francisco", state:"California")

user = User.new(first_name:"Robbert", last_name:"Thomas", username:"robtom", password_digest:"password", zip_code:94118)

review = Review.new(city_name:"San Francisco", accessibility:5, cost:5, quality:2, safety:1, entertainment:5, user_id:1, city_id:1)