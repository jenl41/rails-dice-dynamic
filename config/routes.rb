Rails.application.routes.draw do

get("/", {:controller => "homepage", :action => "home"})

get("/dice/:number_of_dice/:how_many_sides", {:controller => "roll", :action => "roll"})

end
