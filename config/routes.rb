Rails.application.routes.draw do
  resources :post_tags
  get '/login' => 'sessions#new'
  root 'application#index'
  get '/', to: 'application#index', as: 'q'

  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/login' => 'sessions#forbidden'

  get '/tags', to: 'posts#tags', as: 'tag_posts'

  resources :comments
  resources :tags
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
