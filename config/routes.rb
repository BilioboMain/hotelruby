Rails.application.routes.draw do
  get 'bookings_admin', to: 'bookings_admin#index'
  resources :rooms_admins
  get 'reviews_admin/index'
  get '/', to: "mainpage#index"
  devise_for :admins
  root 'reviews_admin#index'
  get 'admins_panel', to:'admins_panel#index'
  get 'reviews_admin', to:'reviews_admin#index'
  post '/reviews_admin/update', to:'reviews_admin#update'
  post '/reviews_admin/hide', to:'reviews_admin#hide'
  post '/bookings_admin/update', to:'bookings_admin#update'
  post '/bookings_admin/hide', to:'bookings_admin#hide'
  post 'bookings/create', to:"bookings#create"
  get 'bookings/', to: "bookings#index"
  get 'bookings/booked'
  get 'reviews', to: "reviews#index"
  get '/', to: "mainpage#index"
  get 'rooms' , to: "rooms#index"
  get 'rooms/:id', to:"rooms#show"
  get 'reviews/new', to: 'reviews#new'
  post 'reviews/create', to: 'reviews#create'
  #root to: "admins_panel#index"
  #get 'rooms/:id', to:"rooms#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
