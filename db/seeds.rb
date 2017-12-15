
Photo.destroy_all
Booking.destroy_all
User.destroy_all
Profile.destroy_all
Event.destroy_all
Category.destroy_all


#users

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

#categories
category_meeting = Category.create!(name: "Meeting")
category_politics = Category.create!(name: "Politics")
category_charity = Category.create!(name: "Charity")

#events
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


#photos
photo1 = Photo.create!(remote_image_url: "https://res.cloudinary.com/konstantin0s/image/upload/t_media_lib_thumb/v1513264068/event4_itqfyf.jpg", event: event4)
photo2 = Photo.create!(remote_image_url: "https://res.cloudinary.com/konstantin0s/image/upload/t_media_lib_thumb/v1513264069/event3_uofdhj.jpg", event: event3)
photo3 = Photo.create!(remote_image_url: "https://res.cloudinary.com/konstantin0s/image/upload/t_media_lib_thumb/v1513264069/event2_z1wvzb.jpg", event: event2)


#bookings

Booking.create!(event: event1, user: dino, total: 100, starts_at: 10.days.from_now, ends_at: 12.days.from_now)
Booking.create!(event: event2, user: mama, total: 200, starts_at: 20.days.from_now, ends_at: 24.days.from_now)
