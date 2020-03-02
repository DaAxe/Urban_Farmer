Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Main Page
  root to: "home#index"

  # Show Shop
  get "/shop", to: "shop#index", as: "shop"

  # Show individual Item
  get "/shop/:id", to: "shop#show", as: "item"

  # Show member profile
   
end
