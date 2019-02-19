Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'restaurants', to: 'restaurants#index'

  get "restaurants/new", to: "restaurants#new", as: "restaurant_new"
  post "restaurants", to: "restaurants#create"
  # The `show` route needs to be *after* `new` route.
  get "restaurants/:id", to: "restaurants#show", as: "restaurant"

  get "restaurants/:id/edit", to: "restaurants#edit", as: "restaurant_edit"
  patch "restaurants/:id", to: "restaurants#update"

  delete "restaurants/:id", to: "restaurants#destroy", as: "restaurant_delete"
end
