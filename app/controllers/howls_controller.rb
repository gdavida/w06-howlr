
# ------- WOLVES ------------
# ________________________________________

 
  # + name
  # + picture_url
  # + caption


# ________________________________________

# ------- GET ------------
# ________________________________________

#-- INDEX ----------
# my "index" page for howls = list of all howls
# (my @ variable is plural here because I am referring to ALL/multiple records, but you COULD name whatever you want, you just have to remember and reference correctly later. So that is why you giving it the meaninful reference of plural makes sense here.)
# the erb file is where I code what exactly that list will look like
#
get "/howls/?" do
	@howls = Howl.where(id: [1, 2, 3, 4, 5])
	erb :"howls/index"
end


#-- NEW ----------
# my "new" page for howls = a form to to add a new howl into the table
#(my @ variable is single because I am only dealing with a single howl- the ONE howl I want to add here)
# the erb file is where I make that form and through which I have actions that cause the info to post to the db through the create route
#
get "/howls/new/?" do
	@howl = Howl.new
  @wolves = Wolf.all
  @wolf = Wolf.find_by_id(params['id'])
	erb :"howls/new"
end


#-- SHOW ---------
# When I want to look futher at a specific record I will look it up by its primary key ("id")
# In my erb file I format what information about each record I want to show, and in this case the erb file will a list of all howlbacks for the specific howls
#
get "/howls/:id/?" do
  @howl = Howl.find_by_id(params['id'])
  @wolves = Wolf.all
  @wolf = Wolf.find_by_id(params['id'])
  @howlbacks = Howlback.all
  @howlback = Howlback.find_by_id(params['id'])
  @howl_responses = Howlback.where(howl_id: (params['id']))
  erb :"howls/show"
end


#-- HOWLBACK FORM ---------
# When I want to look futher at a specific record I will look it up by its primary key ("id")
# In my erb file I format what information about each record I want to show, and in this case the erb file will a list of all howlbacks for the specific howls
#
get "/howls/:id/howlbacks?" do
  @howl = Howl.find_by_id(params['id'])
  @wolves = Wolf.all
  @wolf = Wolf.find_by_id(params['id'])
  @howlbacks = Howlback.all
  @howlback = Howlback.find_by_id(params['id'])
  @howl_responses = Howlback.where(howl_id: (params['id']))
  erb :"howls/show_form"
end



# ________________________________________

# ------- POST ------------
# ________________________________________

#-- CREATE ----------
# my "create" takes the input from the form on the "new" page and posts it to the db, creating a new object
# If the info I entered is validates and therefore saves, I will be redirected to the "index" (/howls) where I will see the  list of all howls, including the new one
# Else I will stay on the new page, and an error message shows up indicating which validations must be met in order for it to save
#
post "/howls/?" do
	@howl = Howl.new(howl: params['howl'],
                 wolf_id: params['wolf_id'],
                 share_image_url: params['share_image_url'],
                 likes: params['likes'])
  @wolves = Wolf.all
  @wolf = Wolf.find_by_id(params['id'])
  
	if @howl.save
		redirect to("/howls")
	else
		erb :"howls/new"
	end

end

# ________________________________________
