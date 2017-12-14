# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Photo.destroy_all
Category.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all


dino = User.create!(
  email: 'dino@codaisseur.com',
  password: '123456'
)
mama = User.create!(
  email: 'mama@codaisseur.com',
  password: '123456'
)

lus = User.create!(
  email: 'lus@codaisseur.com',
  password: '123456'
)


category_meeting = Category.create!(name: "Meeting")
category_politics = Category.create!(name: "Politics")
category_charity = Category.create!(name: "Charity")


event1 = Event.create!(
  name: "Meetings",
  description: "Normcore meh put a bird on it man braid mumblecore, locavore synth swag kogi helvetica ugh health goth twee ",
   location: "Roterdam",
   price: 100,
   capacity: 200,
  includes_food:true,
   includes_drinks:true,
   starts_at:DateTime.strptime("12/20/2017 7:30", "%m/%d/%Y %H:%M"),
   ends_at:DateTime.strptime("12/20/2017 9:30", "%m/%d/%Y %H:%M"),
   active:true,
  user: dino ,
categories: [category_meeting])

event2 =  Event.create!(
    name: "Meetings",
    description: "Normcore meh put a bird on it man braid mumblecore, locavore synth swag kogi helvetica ugh health goth twee ",
     location: "Roterdam",
     price: 100,
     capacity: 200,
    includes_food:true,
     includes_drinks:true,
     starts_at:DateTime.strptime("12/20/2017 7:30", "%m/%d/%Y %H:%M"),
     ends_at:DateTime.strptime("12/20/2017 9:30", "%m/%d/%Y %H:%M"),
     active:true,
    user: lus,
  categories: [category_charity])


  event3 = Event.create!(
    name: "Meetings",
    description: "Normcore meh put a bird on it man braid mumblecore, locavore synth swag kogi helvetica ugh health goth twee ",
     location: "Roterdam",
     price: 100,
     capacity: 200,
    includes_food:true,
     includes_drinks:true,
     starts_at:DateTime.strptime("12/20/2017 7:30", "%m/%d/%Y %H:%M"),
     ends_at:DateTime.strptime("12/20/2017 9:30", "%m/%d/%Y %H:%M"),
     active:true,
    user: dino,
  categories: [category_meeting])




 event4 = Event.create!(
   name: "Meetings",
   description: "Normcore meh put a bird on it man braid mumblecore, locavore synth swag kogi helvetica ugh health goth twee ",
    location: "Roterdam",
    price: 100,
    capacity: 200,
   includes_food:true,
    includes_drinks:true,
    starts_at:DateTime.strptime("12/20/2017 7:30", "%m/%d/%Y %H:%M"),
    ends_at:DateTime.strptime("12/20/2017 9:30", "%m/%d/%Y %H:%M"),
    active:true,
   user: mama,
 categories: [category_politics])


photo1 = Photo.create!(remote_image_url: "https://res.cloudinary.com/konstantin0s/image/upload/t_media_lib_thumb/v1513264068/event4_itqfyf.jpg", event: event4)
photo2 = Photo.create!(remote_image_url: "https://res.cloudinary.com/konstantin0s/image/upload/t_media_lib_thumb/v1513264069/event3_uofdhj.jpg", event: event3)
photo3 = Photo.create!(remote_image_url: "https://res.cloudinary.com/konstantin0s/image/upload/t_media_lib_thumb/v1513264069/event2_z1wvzb.jpg", event: event2)
