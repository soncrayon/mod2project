Rails.application.routes.draw do
  resources :styles
  resources :categories
  resources :items
  resources :outfit_items
  resources :outfits
  resources :users

  get '/welcome', to: 'application#welcome' 
  get '/login', to: 'application#login'
  post '/login', to: 'application#login'
  get '/new_account', to: 'application#new_account'
  post '/create_account', to: 'application#create_account'
  get '/home', to: 'application#home'
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
