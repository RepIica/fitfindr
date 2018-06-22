Rails.application.routes.draw do
  resources :post_tags
  get '/login' => 'sessions#new'
  root 'application#index'
  get '/', to: 'application#index', as: 'q'

  get '/sign-up' => 'users#new'
  post '/sign-up' => 'users#create'

  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/login' => 'sessions#forbidden'

  resources :comments
  resources :tags
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
