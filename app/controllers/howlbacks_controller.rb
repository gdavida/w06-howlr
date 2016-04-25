
# ------- HOWLBACK------------
# ________________________________________

 
	# + integer "howl_id"
	# + integer "wolf_id"
	# + string  "howlback_image_url"
	# + integer "likes"
	# + string  "message"


# ________________________________________

# ------- GET ------------
# ________________________________________

#-- INDEX ----------
# my "index" page for howlbacks = list of all howlbacks
# (my @ variable is plural here because I am referring to ALL/multiple records, but you COULD name whatever you want, you just have to remember and reference correctly later. So that is why you giving it the meaninful reference of plural makes sense here.)
# the erb file is where I code what exactly that list will look like
#
get "/howlbacks/?" do
	@howlbacks = Howlback.all
	@howlback = Howlback.find_by_id(params['id'])
  @wolves = Wolf.all
  @wolf = Wolf.find_by_id(params['id'])
  @howls = Howl.all
  @howl = Howl.find_by_id(params['id'])
	erb :"howlbacks/index"
end


#-- NEW ----------
# my "new" page for howlbacks = a form to to add a new howlback into the table
#(my @ variable is single because I am only dealing with a single howlback- the ONE howlback I want to add here)
# the erb file is where I make that form and through which I have actions that cause the info to post to the db through the create route
#
get "/howlbacks/new/?" do
	@howlback = Howlback.new
  @wolves = Wolf.all
  @wolf = Wolf.find_by_id(params['id'])
  @howls = Howl.all
  @howl = Howl.find_by_id(params['id'])
	erb :"howlbacks/new"
end

# ________________________________________

# ------- POST ------------
# ________________________________________

#-- CREATE ----------
# my "create" takes the input from the form on the "new" page and posts it to the db, creating a new object
# If the info I entered is validates and therefore saves, I will be redirected to the "index" (/howlbacks) where I will see the  list of all howlbacks, including the new one
# Else I will stay on the new page, and an error message shows up indicating which validations must be met in order for it to save
#
post "/howlbacks/?" do
	@howlback = Howlback.new(howl_id: params['howl_id'],
                 wolf_id: params['wolf_id'],
                 howlback_image_url: params['howlback_image_url'],
                 likes: params['likes'],
                 message: params['message'])
  @wolves = Wolf.all
  @wolf = Wolf.find_by_id(params['id'])
  @howls = Howl.all
  @howl = Howl.find_by_id(params['id'])
  
	if @howlback.save
		redirect to("/howlbacks")
	else
		erb :"howlbacks/new"
	end

end

# ________________________________________
