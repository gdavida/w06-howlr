# Put your seed data in here. This should be a series of .create! statements for
# each of your relevant models.
#
# You'll run it with rake db:seed
#
# For example:
#
# Insect.create!(name: "Fuzzy Mantis", description: "Really Fierce")

Wolf.create!(name:"John", picture_url:"https://s3-us-west-2.amazonaws.com/wolfimages/wolf-1.jpg", caption:"Howdy pals.")
Wolf.create!(name:"Paul", picture_url:"https://s3-us-west-2.amazonaws.com/wolfimages/wolf-2.jpg", caption:"Howdy pals.")
Wolf.create!(name:"George", picture_url:"https://s3-us-west-2.amazonaws.com/wolfimages/wolf-3.jpg", caption:"Howdy pals.")
Wolf.create!(name:"Ringo", picture_url:"https://s3-us-west-2.amazonaws.com/wolfimages/wolf-4.jpg", caption:"Howdy pals.")
Wolf.create!(name:"Delores", picture_url:"https://s3-us-west-2.amazonaws.com/wolfimages/wolf-5.jpg", caption:"Howdy pals.")

Howl.create!(howl:"Aroooooooooo!!", wolf_id: 1, share_image_url: "https://s3-us-west-2.amazonaws.com/wolfimages/share-1.jpg", likes: 0)
Howl.create!(howl:"Pretty cool project. As far as things go.", wolf_id: 1, likes: 11)
Howl.create!(howl:"I've included Bootstrap for you, but you don't need to use Bootstrap.", wolf_id: 2, likes: 1)
Howl.create!(howl:"Your client here is a pack of wolves. They're hungry. ", wolf_id: 2, likes: 1)
Howl.create!(howl:" Twitter for wolves (not to be confused with Dogbook, which is Facebook for dogs).", wolf_id: 2, likes: 2)
Howl.create!(howl:"This project is different from ones you've had before, in that.", wolf_id: 3, share_image_url: "https://s3-us-west-2.amazonaws.com/wolfimages/share-2.jpg", likes: 3)
Howl.create!(howl:'We should be able to "like" a howl.', wolf_id: 4, share_image_url: "https://s3-us-west-2.amazonaws.com/wolfimages/share-3.jpg", likes: 0)
Howl.create!(howl:"Hint: I'm the wolf.", wolf_id: 4, share_image_url: "https://s3-us-west-2.amazonaws.com/wolfimages/share-4.jpg", likes: 27)
Howl.create!(howl:"Think about what happens for each page if there are no wolves in the database.", wolf_id: 4, likes: 0)
Howl.create!(howl:"Don't try to be a hero.", wolf_id: 4, likes: 1)

