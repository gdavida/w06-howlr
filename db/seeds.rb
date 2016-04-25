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
Howl.create!(howl:'We should be able to "like" a howl.', wolf_id: 4, share_image_url: "https://s3-us-west-2.amazonaws.com/wolfimages/share-3.jpg", likes: 0)
Howl.create!(howl:"Hint: I'm the wolf.", wolf_id: 4, share_image_url: "https://s3-us-west-2.amazonaws.com/wolfimages/share-4.jpg", likes: 27)
Howl.create!(howl:"Think about what happens for each page if there are no wolves in the database.", wolf_id: 4, likes: 0)
Howl.create!(howl:"Don't try to be a hero.", wolf_id: 4, likes: 1)


Howlback.create!(howl_id:1, wolf_id:2, response_image_url:"http://s2.quickmeme.com/img/c7/c76aca0a6baf816d36f703f1136d0fb8c7c28cb31a7f729e567398602f2df669.jpg", likes: 0, message: "Right?!")
Howlback.create!(howl_id:1, wolf_id:3, likes: 0, message: "No way!!!!")
Howlback.create!(howl_id:1, wolf_id:2, likes: 0, message: "I agree!")
Howlback.create!(howl_id:1, wolf_id:2, response_image_url:"http://cdn.photonesta.com/images/assets.diylol.com/hfs/5b2/36a/a43/resized/dwight-meme-generator-lone-wolf-false-wolves-live-in-packs-and-are-never-alone-34d6cd.jpg", likes: 0, message: "YESSSS!!!")


