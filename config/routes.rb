Carpentry::Engine.routes.draw do
  root :to => "prototypes#serve", :file_path => "index"
  match "/*file_path" => "prototypes#serve", via: :get
end
