require 'open-uri'
file1 = URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700654226/development/rapnsgxnvxj3bq03trlmec541s1o.jpg")
file2= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700662716/dsxuniiv8jyyetbrmbvl.jpg")
file3= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700663135/j6rygoqqo7cpe48g2a31.jpg")
file4= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700752860/verpbtyvbzvoenwj9ik5.jpg")
file5= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700753428/kqxxkpqidhzwvl5mth41.jpg")
file6= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700753440/kjhsdaiow3lzokoujoq3.jpg")
file7= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700755648/uaypfituhpzy4cdwgjap.jpg")
file8= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700755661/ryqotyuvdyk50uhqofll.jpg")
puts "Cleaning database..."
Booking.destroy_all
Jet.destroy_all
User.destroy_all

puts "Creating users"
User.create(email: "carlos@lewagon.com" , password: "123456" , first_name: "Carlos", last_name: "Coelho");
User.create(email: "tiago@lewagon.com" , password: "123456" , first_name: "Tiago", last_name: "Neto");
User.create(email: "catarina@lewagon.com" , password: "123456" , first_name: "Catarina", last_name: "Furtado");

puts "Creating jets"
jet1 = Jet.new(name: "Gulfstream G550", description: "A business aircraft with capacity for 19 persons and autonomy for 12,500 km'", price: 50000, user: User.first, city: "Lisbon", country: "Portugal");
jet1.photo.attach(io: file1, filename: 'rapnsgxnvxj3bq03trlmec541s1o', content_type: 'image/jpg')
jet1.save
jet2 = Jet.new(name: "Dassault Falcon 900", description: "A luxurious aircraft for fast and confotable flights", price: 80000, user: User.last, city: "Porto", country: "Portugal");
jet2.photo.attach(io: file2, filename: 'dsxuniiv8jyyetbrmbvl', content_type: 'image/jpg')
jet2.save
jet3 = Jet.new(name: "Bombardier Global Express", description: "A classic aircraft, perfect for bussiness flights", price: 70000, user: User.last, city: "Setubal", country: "Portugal");
jet3.photo.attach(io: file3, filename: 'j6rygoqqo7cpe48g2a31', content_type: 'image/jpg')
jet3.save
jet4 = Jet.new(name: "HondaJet HA-420", description: "The Honda HA-420 HondaJet is a light business jet produced by the Honda Aircraft Company of Greensboro, North Carolina, United States.", price: 10000, user: User.first, city: "Faro", country: "Portugal");
jet4.photo.attach(io: file4, filename: 'verpbtyvbzvoenwj9ik5', content_type: 'image/jpg')
jet4.save
jet5 = Jet.new(name: "Cessna Citation Latitude", description: "The Cessna Citation Latitude is a business jet built by Cessna..", price: 15000, user: User.first, city: "Riyadh", country: "Saudi Arabia");
jet5.photo.attach(io: file5, filename: 'kqxxkpqidhzwvl5mth41', content_type: 'image/jpg')
jet5.save
jet6 = Jet.new(name: "Bombardier Challenger 350", description: "The Challenger 350 aircraft delivers unmatched versatility – offering the perfect combination of range, speed, field performance and overall value.", price: 20000, user: User.last, city: "Jeddah", country: "Saudi Arabia");
jet6.photo.attach(io: file6, filename: 'kjhsdaiow3lzokoujoq3', content_type: 'image/jpg')
jet6.save
jet7 = Jet.new(name: "Dassault Falcon 900", description: "The Falcon 900 is a development of the Falcon 50, itself a development of the earlier Falcon 20. The Falcon 900 design incorporates composite materials.", price: 30000, user: User.first, city: "Abu Dhabi", country: "UAE");
jet7.photo.attach(io: file7, filename: 'uaypfituhpzy4cdwgjap', content_type: 'image/jpg')
jet7.save
jet8 = Jet.new(name: "Bombardier Global 7500", description: "Engineered for total performance and featuring an industry leading 7,700 nm range, no other business jet offers the Global 7500 aircraft's ultimate combination of confort and style", price: 50000, user: User.last, city: "Dubai", country: "UAE");
jet8.photo.attach(io: file8, filename: 'ryqotyuvdyk50uhqofll', content_type: 'image/jpg')
jet8.save
puts "Finished!"
