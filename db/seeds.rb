# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
john = User.create!(name: "John Sense", email: "john@sense.com", password: "password", image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/f/f7/Jason_Voorhees_%28Ken_Kirzinger%29.jpg/250px-Jason_Voorhees_%28Ken_Kirzinger%29.jpg")

tim = User.create!(name: "Tim Curry", email: "tim@curry.com", password: "password", image_url: "https://static1.colliderimages.com/wordpress/wp-content/uploads/2020/11/tim-curry-it-pennywise-social.jpg")
