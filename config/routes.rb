Rails.application.routes.draw do
  namespace "p", :module => :carpentry do
    root :to => "prototypes#serve", :file_path => "index"
    match "/*file_path" => "prototypes#serve", via: :get
  end
end
