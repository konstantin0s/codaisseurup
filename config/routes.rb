Rails.application.routes.draw do


root to: 'pages#home'

devise_for :users

resources :users, only: [:show]
resources :events, except: [:destroy]
resources :categories
resources :profiles, only: [:new, :edit, :create, :update]
resources :photos, only: [:destroy]

resources :events do
resources :bookings, only: [:create]
end

# post '/preload' => 'bookings#preload'
end
