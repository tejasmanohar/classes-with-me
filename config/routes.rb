Rails.application.routes.draw do
  resources :users
  root 'application#index'
  get '/auth/facebook/callback' => 'sessions#create'
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
