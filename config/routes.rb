Rails.application.routes.draw do
  root "colors#index"

  resources :colors
  #get "/colors", to: "colors#index", as: "colors"

  #get "/colors/new", to: "colors#new", as: "new_color"
  #post "/colors", to: "colors#create"

  #get "/colors/:id", to: "colors#show"

  #get "/colors/:id/edit", to: "colors#edit", as: "edit_color"
  #post "/colors", to: "colors#create"
end
