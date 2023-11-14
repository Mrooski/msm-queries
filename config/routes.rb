Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "director", :action => "home"})
  get("/directors/youngest", {:controller => "director", :action => "youngest"})
  get("/directors/eldest", {:controller => "director", :action => "eldest"})
  get("/directors/:id", {:controller => "director", :action => "individual"})


end
