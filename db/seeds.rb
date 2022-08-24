# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "clearing all partners..."
Booking.destroy_all
Partner.destroy_all
User.destroy_all
puts "creating partners..."
file = URI.open("https://res.cloudinary.com/dluisdviu/image/upload/v1661354612/Grab_me/m-pic_fpobzs.jpg")
martim = User.create(email: "martim@gmail.com", username: "Martim", password: "123123")
p1 = Partner.new(name: martim.username, description: "charming, strong", price: 1, user_id: martim.id)
p1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
p1.save


@bryan = User.create(email: "bryan@gmail.com", username: "Bryan", password: "123123")

file = URI.open("https://res.cloudinary.com/dluisdviu/image/upload/v1661334579/cld-sample.jpg")
gabriel = User.create(email: "gabriel@gmail.com", username: "Gabriel", password: "123123")
p2 = Partner.create(name: gabriel.username, description: "charming, strong", price: 1, user_id: gabriel.id)
p2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
p2.save

file = URI.open("https://res.cloudinary.com/dluisdviu/image/upload/v1661334579/cld-sample.jpg")
luis = User.create(email: "luis@gmail.com", username: "Luis", password: "123123")
p3 = Partner.create(name: luis.username, description: "charming, strong", price: 1, user_id: luis.id)
p3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
p3.save

file = URI.open("https://res.cloudinary.com/dluisdviu/image/upload/v1661353638/Grab_me/francisco_utn5ci.jpg")
francisco = User.create(email: "francisco@gmail.com", username: "Francisco", password: "123123")
p4 = Partner.create(name: francisco.username, description: "I will act like im your cool date for the day!", price: 10, user_id: francisco.id)
p4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
p4.save

file = URI.open("https://res.cloudinary.com/dluisdviu/image/upload/v1661334579/cld-sample.jpg")
joao = User.create(email: "joao@gmail.com", username: "Joao", password: "123123")
p4 = Partner.create(name: joao.username, description: "charming, strong", price: 1, user_id: joao.id)
p4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
p4.save
puts "Done."
