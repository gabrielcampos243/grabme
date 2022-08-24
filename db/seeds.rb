# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "clearing all partners..."
User.destroy_all
Partner.destroy_all
puts "creating partners..."

@martim = User.create(email: "martim@gmail.com", username: "Martim", password: "123123")
Partner.create(name: @martim.username, description: "charming, strong", price: 1, user_id: @martim.id)

@bryan = User.create(email: "bryan@gmail.com", username: "Bryan", password: "123123")

@gabriel = User.create(email: "gabriel@gmail.com", username: "Gabriel", password: "123123")
Partner.create(name: @gabriel.username, description: "charming, strong", price: 1, user_id: @gabriel.id)

@luis = User.create(email: "luis@gmail.com", username: "Luis", password: "123123")
Partner.create(name: @luis.username, description: "charming, strong", price: 1, user_id: @luis.id)

@francisco = User.create(email: "francisco@gmail.com", username: "Francisco", password: "123123")
Partner.create(name: @francisco.username, description: "charming, strong", price: 1, user_id: @francisco.id)

@joao = User.create(email: "joao@gmail.com", username: "joao", password: "123123")
Partner.create(name: @joao.username, description: "charming, strong", price: 1, user_id: @joao.id)
puts "Done."
