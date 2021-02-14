Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action=> "index"})
  get("/directors/eldest", { :controller => "directors", :action=> "wisest"})
  get("/directors/youngest", { :controller => "directors", :action=> "freshest"})
  get("/directors/:foreign_id", { :controller => "directors", :action=> "details"})
  get("/movies", { :controller => "movies", :action=> "index"})
  get("/movies/:a_id", { :controller => "movies", :action=> "details"})
end
