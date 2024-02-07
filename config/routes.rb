Rails.application.routes.draw do

  get("/", {:controller => "play", :action =>"home"})

  get("/rock", {:controller => "play", :action =>"rock"})

  get("/paper", {:controller => "play", :action =>"paper"})

  get("/scissors", {:controller => "play", :action =>"scissors"})
end
