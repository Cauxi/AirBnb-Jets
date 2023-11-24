require 'open-uri'
file1 = URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700654226/development/rapnsgxnvxj3bq03trlmec541s1o.jpg")
file2= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700662716/dsxuniiv8jyyetbrmbvl.jpg")
file3= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700826102/ems8dskokgahc4jqwb5g.jpg")
file4= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700752860/verpbtyvbzvoenwj9ik5.jpg")
file5= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700753428/kqxxkpqidhzwvl5mth41.jpg")
file6= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700753440/kjhsdaiow3lzokoujoq3.jpg")
file7= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700755648/uaypfituhpzy4cdwgjap.jpg")
file8= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700755661/ryqotyuvdyk50uhqofll.jpg")
file9= URI.open("https://res.cloudinary.com/dvubvgrws/image/upload/v1700826039/development/1tl6n7muito4049l55rc6x0qqgwa.jpg")
puts "Cleaning database..."
Booking.destroy_all
Jet.destroy_all
User.destroy_all

puts "Creating users"
User.create(email: "carlos@lewagon.com" , password: "123456" , first_name: "Carlos", last_name: "Coelho");
User.create(email: "tiago@lewagon.com" , password: "123456" , first_name: "Tiago", last_name: "Neto");
User.create(email: "catarina@lewagon.com" , password: "123456" , first_name: "Catarina", last_name: "Furtado");

puts "Creating jets"
jet1 = Jet.new(name: "Gulfstream G550", description: "The Gulfstream G550 is a ultralong range large cabin class business jet which entered service in 2003 and is part of the current product offerings produced by Gulfstream Aerospace.", price: 50000, user: User.first, city: "Lisbon", country: "Portugal");
jet1.photo.attach(io: file1, filename: 'rapnsgxnvxj3bq03trlmec541s1o', content_type: 'image/jpg')
jet1.save
jet2 = Jet.new(name: "Gulfstream G450", description: "Embark on a journey of unparalleled luxury and performance with the Gulfstream G450, an exquisite and versatile business jet that seamlessly integrates advanced technology, opulent comfort, and impressive range, delivering an unmatched aviation experience for those who demand the utmost in sophistication and efficiency in their travels", price: 50000, user: User.last, city: "Madinah", country: "Saudi  Arabia");
jet2.photo.attach(io: file2, filename: 'dsxuniiv8jyyetbrmbvl', content_type: 'image/jpg')
jet2.save
jet3 = Jet.new(name: "Bombardier Global Express", description: "Embark on the pinnacle of luxury travel with the Bombardier Global Express, a peerless ultra-long-range business jet that seamlessly combines state-of-the-art technology, sumptuous design, and extraordinary performance to redefine the standards of opulence and efficiency in global air travel.", price: 70000, user: User.first, city: "Setubal", country: "Portugal");
jet3.photo.attach(io: file3, filename: 'ems8dskokgahc4jqwb5g', content_type: 'image/jpg')
jet3.save
jet4 = Jet.new(name: "HondaJet HA-420", description: "Elevate your aviation experience with the HondaJet HA-420, a cutting-edge and impeccably designed light business jet that seamlessly blends innovative engineering, ergonomic comfort, and unparalleled performance, offering a unique fusion of style and efficiency for the discerning traveler.", price: 20000, user: User.first, city: "Faro", country: "Portugal");
jet4.photo.attach(io: file4, filename: 'verpbtyvbzvoenwj9ik5', content_type: 'image/jpg')
jet4.save
jet5 = Jet.new(name: "Cessna Citation Latitude", description: "Indulge in a new era of private jet travel with the Cessna Citation Latitude, a meticulously crafted midsize business jet that seamlessly combines spacious luxury, state-of-the-art avionics, and exceptional performance, ensuring an unparalleled blend of comfort and efficiency for the modern traveler.", price: 40000, user: User.first, city: "Riyadh", country: "Saudi Arabia");
jet5.photo.attach(io: file5, filename: 'kqxxkpqidhzwvl5mth41', content_type: 'image/jpg')
jet5.save
jet6 = Jet.new(name: "Bombardier Challenger 350", description: "Experience the epitome of business jet excellence with the Bombardier Challenger 350, a super-midsize aircraft that effortlessly marries sleek design, cutting-edge technology, and outstanding performance, offering a luxurious and productive environment tailored for the discerning traveler seeking unparalleled comfort and efficiency in air travel.", price: 60000, user: User.last, city: "Jeddah", country: "Saudi Arabia");
jet6.photo.attach(io: file6, filename: 'kjhsdaiow3lzokoujoq3', content_type: 'image/jpg')
jet6.save
jet7 = Jet.new(name: "Dassault Falcon 900", description: "Embark on unparalleled luxury and sophistication with the Dassault Falcon 900, a trijet masterpiece seamlessly merging cutting-edge technology, opulent design, and superior performance for an exclusive travel experience of uncompromising elegance.", price: 80000, user: User.last, city: "Porto", country: "Portugal");
jet7.photo.attach(io: file7, filename: 'uaypfituhpzy4cdwgjap', content_type: 'image/jpg')
jet7.save
jet8 = Jet.new(name: "Bombardier Global 7500", description: "Embark on the pinnacle of ultra-long-range luxury with the Bombardier Global 7500, a masterful achievement in business aviation that seamlessly blends cutting-edge technology, unmatched range, and opulent design, setting a new standard for personalized, long-haul travel where every detail is meticulously crafted for the most discerning of passengers.", price: 100000, user: User.last, city: "Dubai", country: "UAE");
jet8.photo.attach(io: file8, filename: 'ryqotyuvdyk50uhqofll', content_type: 'image/jpg')
jet8.save
jet9 = Jet.new(name: "AirBus A380", description: "Embark on an extraordinary realm of private aviation luxury with the Airbus A380 Executive Private Jet, a bespoke and lavishly appointed airborne palace that redefines opulence, offering discerning travelers an unparalleled fusion of expansive interiors, state-of-the-art amenities, and customized exclusivity, creating an unmatched experience in private jet travel.", price: 1000000, user: User.first, city: "Abu Dhabi", country: "UAE");
jet9.photo.attach(io: file9, filename: '1tl6n7muito4049l55rc6x0qqgwa', content_type: 'image/jpg')
jet9.save
puts "Finished!"
