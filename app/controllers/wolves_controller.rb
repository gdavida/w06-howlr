
# ------- WOLVES ------------
# ________________________________________

 
  # + name
  # + picture_url
  # + caption


# ________________________________________

# ------- GET ------------
# ________________________________________

#-- INDEX ----------
# my "index" page for wolves = list of all wolves
# (my @ variable is plural here because I am referring to ALL/multiple records, but you COULD name whatever you want, you just have to remember and reference correctly later. So that is why you giving it the meaninful reference of plural makes sense here.)
# the erb file is where I code what exactly that list will look like
#
get "/wolves/?" do
	@wolves = Wolf.all
	erb :"wolves/index"
end


#-- NEW ----------
# my "new" page for wolves = a form to to add a new wolf into the table
#(my @ variable is single because I am only dealing with a single wolf- the ONE wolf I want to add here)
# the erb file is where I make that form and through which I have actions that cause the info to post to the db through the create route
#
get "/wolves/new/?" do
	@wolf = Wolf.new
	erb :"wolves/new"
end

# ________________________________________

# ------- POST ------------
# ________________________________________

#-- CREATE ----------
# my "create" takes the input from the form on the "new" page and posts it to the db, creating a new object
# If the info I entered is validates and therefore saves, I will be redirected to the "index" (/wolves) where I will see the  list of all wolves, including the new one
# Else I will stay on the new page, and an error message shows up indicating which validations must be met in order for it to save
#
post "/wolves/?" do
	@wolf = Wolf.new(params)

	if @wolf.save
		redirect to("/wolves")
	else
		erb :"wolves/new"
	end

end

# ________________________________________
