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

file = URI.open("https://res.cloudinary.com/dluisdviu/image/upload/v1661510458/Grab_me/gabriel_w3cw5b.png")
gabriel = User.create(email: "gabriel@gmail.com", username: "Gabriel", password: "123123")
p2 = Partner.create(name: gabriel.username, description: "charming, strong", price: 1, user_id: gabriel.id)
p2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
p2.save

file = URI.open("https://res.cloudinary.com/dluisdviu/image/upload/v1661510453/Grab_me/luis_clbu66.jpg")
luis = User.create(email: "luis@gmail.com", username: "Luis", password: "123123")
p3 = Partner.create(name: luis.username, description: "charming, strong", price: 1, user_id: luis.id)
p3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
p3.save

file = URI.open("https://res.cloudinary.com/dluisdviu/image/upload/v1661353638/Grab_me/francisco_utn5ci.jpg")
francisco = User.create(email: "francisco@gmail.com", username: "Francisco", password: "123123")
p4 = Partner.create(name: francisco.username, description: "I will act like im your cool date for the day!", price: 10, user_id: francisco.id)
p4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
p4.save

file = URI.open("https://res.cloudinary.com/dluisdviu/image/upload/v1661510655/Grab_me/art-%D0%BA%D1%80%D0%B0%D1%81%D0%B8%D0%B2%D1%8B%D0%B5-%D0%BA%D0%B0%D1%80%D1%82%D0%B8%D0%BD%D0%BA%D0%B8-Biker-Mice-from-Mars-%D0%9C%D1%8B%D1%88%D0%B8-%D0%B1%D0%B0%D0%B9%D0%BA%D0%B5%D1%80%D1%8B-%D1%81-%D0%9C%D0%B0%D1%80%D1%81%D0%B0-802439_vt5p2g.jpg")
joao = User.create(email: "joao@gmail.com", username: "Joao", password: "123123")
p4 = Partner.create(name: joao.username, description: "charming, strong", price: 1, user_id: joao.id)
p4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
p4.save

file = URI.open("https://res.cloudinary.com/dluisdviu/image/upload/v1661509694/Grab_me/daniela_phhijq.jpg")
daniel = User.create(email: "daniel@gmail.com", username: "Daniel", password: "123123")
p4 = Partner.create(name: daniel.username, description: "charming, strong", price: 10, user_id: daniel.id)
p4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
p4.save

file = URI.open("https://res.cloudinary.com/dluisdviu/image/upload/v1661509608/Grab_me/20220818_170355_pxuqop.jpg")
alex = User.create(email: "alex@gmail.com", username: "Alex", password: "123123")
p4 = Partner.create(name: alex.username, description: "charming, strong", price: 100, user_id: alex.id)
p4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
p4.save

file = URI.open("https://res.cloudinary.com/dluisdviu/image/upload/v1661509592/Grab_me/20220818_155520_jlghei.jpg")
rafa = User.create(email: "rafa@gmail.com", username: "Rafa", password: "123123")
p4 = Partner.create(name: rafa.username, description: "charming, strong", price: 100, user_id: rafa.id)
p4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
p4.save

file = URI.open("https://res.cloudinary.com/dluisdviu/image/upload/v1661509578/Grab_me/20220818_155329_lb8yuj.jpg")
fabio = User.create(email: "fabio@gmail.com", username: "Fabio", password: "123123")
p4 = Partner.create(name: fabio.username, description: "charming, strong", price: 100, user_id: fabio.id)
p4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
p4.save

luca = URI.open("https://res.cloudinary.com/dluisdviu/image/upload/v1661509697/Grab_me/luca_rkmw4s.jpg")
luca = User.create(email: "luca@gmail.com", username: "Luca", password: "123123")
p4 = Partner.create(name: luca.username, description: "charming, strong", price: 100, user_id: luca.id)
p4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
p4.save

puts "Done."
