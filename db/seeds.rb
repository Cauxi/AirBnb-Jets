require 'open-uri'
file = URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700654226/development/rapnsgxnvxj3bq03trlmec541s1o.jpg")
file1= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700662716/dsxuniiv8jyyetbrmbvl.jpg")
file2= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700663135/j6rygoqqo7cpe48g2a31.jpg")
puts "Cleaning database..."
Booking.destroy_all
Jet.destroy_all
User.destroy_all

User.create(email: "carlos@lewagon.com" , password: "123456" , first_name: "Carlos", last_name: "Coelho");
User.create(email: "tiago@lewagon.com" , password: "123456" , first_name: "Tiago", last_name: "Neto");
User.create(email: "catarina@lewagon.com" , password: "123456" , first_name: "Catarina", last_name: "Furtado");

jet1 = Jet.new(name: "Gulfstream G550", description: "A business aircraft with capacity for 19 persons and autonomy for 12,500 km'", price: 50000, user: User.first, city: "Lisbon");
jet1.photo.attach(io: file, filename: 'rapnsgxnvxj3bq03trlmec541s1o', content_type: 'image/jpg')
jet1.save
jet2 = Jet.new(name: "Dassault Falcon 900", description: "A luxurious aircraft for fast and confotable flights", price: 80000, user: User.last, city: "Porto");
jet2.photo.attach(io: file1, filename: 'dsxuniiv8jyyetbrmbvl', content_type: 'image/jpg')
jet2.save
jet3 = Jet.new(name: "Bombardier Global Express", description: "A classic aircraft, perfect for bussiness flights", price: 70000, user: User.last, city: "Setubal");
jet3.photo.attach(io: file2, filename: 'j6rygoqqo7cpe48g2a31', content_type: 'image/jpg')
jet3.save

puts "Finished!"
