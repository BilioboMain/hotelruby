Rails.application.routes.draw do
  get 'reviews', to: "reviews#index"
  get '/', to: "mainpage#index"
  get 'rooms' , to: "rooms#index"
  get 'rooms/:id', to:"rooms#show"
  get 'reviews/new', to: 'reviews#new'
  post 'reviews/create', to: 'reviews#create'
  #root to: "rooms#index"

  #get 'rooms/:id', to:"rooms#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
