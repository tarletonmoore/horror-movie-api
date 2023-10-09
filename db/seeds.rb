# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
john = User.create!(name: "John Sense", email: "john@sense.com", password: "password", image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/f/f7/Jason_Voorhees_%28Ken_Kirzinger%29.jpg/250px-Jason_Voorhees_%28Ken_Kirzinger%29.jpg")

tim = User.create!(name: "Tim Curry", email: "tim@curry.com", password: "password", image_url: "https://static1.colliderimages.com/wordpress/wp-content/uploads/2020/11/tim-curry-it-pennywise-social.jpg")

movie = Movie.create!(title: "Creepshow", image_url: "https://m.media-amazon.com/images/M/MV5BOTU3NGIyZTctOWEyMS00MGIyLWFkZWMtMTg0ODE2MjExNGZlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg", description: "Six grisly tales about a murdered father rising from his grave, a bizarre meteor, a vengeful husband, a mysterious crate's occupant, a plague of cockroaches and a disgruntled boy.", subgenre: "anthology")

movie = Movie.create!(title: "Nightmare On Elm St.", image_url: "https://patch.com/img/cdn/users/1251793/2012/10/raw/a1bb3d24dc21e633399e8792d3c48d5c.jpg", description: "Teenager Nancy Thompson must uncover the dark truth concealed by her parents after she and her friends become targets of the spirit of a serial killer with a bladed glove in their dreams, in which if they die, it kills them in real life.", subgenre: "slasher")

movie = Movie.create!(title: "Texas Chainsaw Massacre", image_url: "https://m.media-amazon.com/images/M/MV5BMTU1MzY2NDc2MV5BMl5BanBnXkFtZTgwMTc3MTUzMzI@._V1_.jpg", description: "Five friends head out to rural Texas to visit the grave of a grandfather. On the way they stumble across what appears to be a deserted house, only to discover something sinister within. Something armed with a chainsaw.", subgenre: "slasher")

movie = Movie.create!(title: "The Conjuring", image_url: "https://upload.wikimedia.org/wikipedia/en/8/8c/The_Conjuring_poster.jpg", description: "In 1970, paranormal investigators and demonologists Lorraine (Vera Farmiga) and Ed (Patrick Wilson) Warren are summoned to the home of Carolyn (Lili Taylor) and Roger (Ron Livingston) Perron. The Perrons and their five daughters have recently moved into a secluded farmhouse, where a supernatural presence has made itself known. Though the manifestations are relatively benign at first, events soon escalate in horrifying fashion, especially after the Warrens discover the house's macabre history.", subgenre: "paranormal")

fav = Favorite.create!(user_id: 1, movie_id: 1)
fav = Favorite.create!(user_id: 1, movie_id: 3)
fav = Favorite.create!(user_id: 2, movie_id: 1)

movie = Movie.create!(title: "A Quiet Place", image_url: "https://upload.wikimedia.org/wikipedia/en/a/a0/A_Quiet_Place_film_poster.png", description: "A family struggles for survival in a world where most humans have been killed by blind but noise-sensitive creatures. They are forced to communicate in sign language to keep the creatures at bay.", subgenre: "creature feature")

movie = Movie.create!(title: "The Descent", image_url: "https://m.media-amazon.com/images/M/MV5BMjA5NzQ1NTgwNV5BMl5BanBnXkFtZTcwNjUxMzUzMw@@._V1_FMjpg_UX1000_.jpg", description: "A caving expedition goes horribly wrong, as the explorers become trapped and ultimately pursued by a strange breed of predators.", subgenre: "creature feature")

movie = Movie.create!(title: "Trick 'r Treat", image_url: "https://m.media-amazon.com/images/I/51QUejxfV8L._AC_UF894,1000_QL80_.jpg", description: "Five interwoven stories that occur on Halloween: an everyday high school principal has a secret life as a serial killer; a college virgin might have just met the guy for her; a group of teenagers pull a mean prank; a woman who loathes the night has to contend with her holiday-obsessed husband; and a mean old man meets his match with a demonic, supernatural trick-or-treater.", subgenre: "anthology")

movie = Movie.create!(title: "Evil Dead 2", image_url: "https://m.media-amazon.com/images/I/71JMoIKsO0L._AC_UF894,1000_QL80_.jpg", description: "The lone survivor of an onslaught of flesh-possessing spirits holes up in a cabin with a group of strangers while the demons continue their attack.", subgenre: "paranormal")
