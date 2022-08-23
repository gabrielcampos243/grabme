# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "clearing all partners..."
Partner.destroy_all
puts "creating partners..."
Partner.create(name: "Martim", description: "charming, strong")
Partner.create(name: "Francisco", description: "tall, surfer")
Partner.create(name: "Gabriel", description: "Sexy, horny")
Partner.create(name: "Dr.Luis", description: "Dad")
Partner.create(name: "John", description: "Young and wild")
Partner.create(name: "Dr.Luis", description: "Dad")
Partner.create(name: "Dr.Luis", description: "Dad")
Partner.create(name: "Dr.Luis", description: "Dad")
puts "done"
