Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
#  resource :item

  # Main Page
  root to: "home#index"
  get "/", to: "home#index", as: "index"
  # Show Shop
  get "/shop", to: "shop#index", as: "shop"
  #get 'item/index'
  
  # Show Sellers Landing Page
  get "/sell", to: "sell#index", as: "sell"
  
  # Show Sell Form
  get "/item/new", to: "item#new", as: "new_item"
  post "/item/", to: "item#create", as: "create_item"
  # Show individual Item
  get "/item/:id", to: "item#show", as: "item"
  # Edit Item
  get "/item/:id/edit", to: "item#edit", as: "edit_item"
  put "/item/:id", to: "item#update"
  patch "/item/:id", to: "item#update", as: "update_item"
  # Delete Item
  delete "/item/:id", to: "item#destroy"

end
