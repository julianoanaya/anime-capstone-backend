# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Manga.create!(name: "One Piece", chapter: 1053, volume: 102, description: "The series focuses on Monkey D. Luffy, a young man made of rubber, whom, inspired by his childhood idol, the powerful pirate Red-Haired Shanks, sets off on a journey from the East Blue Sea to find the mythical treasure, the One Piece, and proclaim himself the King of the Pirates.")
Anime.create!(name: "One Piece", seasons: 20, episode: 1014, dub: "Yes", image_url: "www.onepiece.test", description: "The series focuses on Monkey D. Luffy, a young man made of rubber, whom, inspired by his childhood idol, the powerful pirate Red-Haired Shanks, sets off on a journey from the East Blue Sea to find the mythical treasure, the One Piece, and proclaim himself the King of the Pirates.", manga_id: 1)
WhereToWatch.create!(streaming_service: "crunchy roll")
Genre.create!(genre: "action")
WhereToRead.create!(reading_service: "crunchy roll")
Image.create(url: "www.op_1.test", manga_id: 1)