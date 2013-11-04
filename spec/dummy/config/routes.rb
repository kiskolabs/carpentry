Rails.application.routes.draw do
  match "/not_a_prototype" => "not_a_prototype#show", via: :get
  mount_carpentry_at "/p"
end
