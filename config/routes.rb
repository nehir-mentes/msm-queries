Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})

  get("/directors/:the_id", { :controller => "directors", :action => "show_details"})

  get("/movies", { :controller => "movies", :action => "index"})

  get("/movies/:movie_id", { :controller => "movies", :action => "show_details"})
end
