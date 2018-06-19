Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  root 'application#hello'

  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :comments
  resources :tags
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
