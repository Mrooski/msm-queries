Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "director", :action => "home"})
  get("/directors/:id", {:controller => "director", :action => "individual"})


end
