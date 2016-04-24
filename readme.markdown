# Week 06: Howlr
https://dry-anchorage-33440.herokuapp.com/


## Description

We've been hired to build *Howlr*, which is twitter for wolves (not to be
confused with *Dogbook*, which is Facebook for dogs). The basic gist is that
wolves who are in a given pack can now howl (as well as howl to each other).

This project is different from ones you've had before, in that we're starting
with a collection of views instead of with a collection of models. This may mean
that you don't build out the full CRUD actions for each model. It also means
that you have to decide what your models will be, what attributes they'll have,
and what methods they'll have.

## Setup

You've got a Sinatra template which is more or less set up for you. You'll still
have to build your models, views, and controllers.

Per before, you'll have to:

1. Fork the project
2. Clone it locally
3. Create the database
4. Start the server and see if it works.

From here, you can create whatever models, controllers, views, and so on you
might need. Make sure to follow conventions we established with our project last
week.

## Project Specifications

You'll need to make this site functional both at the mobile level (phone-width)
and at the full-screen level. I've provided mobile screenshots. You'll have to
figure out the full-screen view yourself (it might just be a bigger version of
the mobile view, or it might be better than that).

There are four key features to *Howlr*, each of which have at least one screenshot in
the designer comps. Make sure to read the descriptions for each comp so you know
what to expect (the descriptions are all the way at the bottom).

1. We should be able to add wolves to our pack.
    + [New Wolf View](http://imgur.com/OFBuyLU)
    + [New Wolf View with Error Message](http://imgur.com/x5Cx6fl)
2. We should be able to see the wolves in our pack.
    + [Pack View](http://imgur.com/6ZPiNRP)
3. We should be able to post a howl for any wolf in our pack.
    + [New Howl Form - Empty](http://imgur.com/yPibmEz)
    + [New Howl Form - Wolf `select` demonstration](http://imgur.com/ND3Sgwo)
    + [New Howl Form - Filled In](http://imgur.com/KajeWIT)
    + [New Howl Form with Errors](http://imgur.com/GnyYndS)
4. We should be able to see the 5 most recently posted howls.
    + [Howls view](http://imgur.com/0yfw128)

([see the full imgur gallery with all comps](http://imgur.com/a/hcsqT))

When we refer to images (notably, profile pictures and images included in
howls), those should be links to images stored externally (imgur, AWS S3, etc.),
and *NOT* images in your public folder. Don't worry right now about trying to
figure out how to do image upload.

In addition, there are two more nice-to-have features for which no comps have
been provided. Don't start on these until you've got the rest of the application
looking and acting the way you want it.

1. We should be able to "like" a howl. Don't worry about restricting the number
   of times a given howl can be liked.
2. We should be able to "howl back" (reply) to a howl.

## Other Notes

1. I've included Bootstrap for you, but you don't need to use Bootstrap. You can
   remove it from `app/views/layout.erb` if you'd like. Everything I've done
   here can be recreated with Bootstrap and some ingenuity... and a
   not-insignificant amount of hard work.
2. This application was drawn by someone who might or might not have any sense
   of what is easy or possible. Try as hard as you can to faithfully recreate
   the spirit of the drawings and the functionality of the application, and work
   to maintain the same basic appearance.
3. Remember that your client here is a pack of wolves. They're hungry. Your
   application should, by Monday morning, perform the core features as you've
   identified them. The wolves are less picky about appearance. Your first (and
   biggest) priority is to get something that works and looks just good enough
   to not make you feel sad.
4. If you can, try using GitHub issues to keep track of tasks.
5. Think about what happens for each page if there are no wolves in the database. Think about
   what happens (on each page) if there are no howls in the database.
6. Collaborate with your classmates, especially when working on styling. Don't
   try to be a hero. Make sure you're working on the most important thing you
   can work on at any given moment.

## Extensions

There are no official extensions for this project.
