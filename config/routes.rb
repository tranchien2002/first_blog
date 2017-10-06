Rails.application.routes.draw do

  get 'users/new'
  root 'static_pages#home'
  get "/home", to: "static_pages#home"
  get '/signup', to: "users#new"
  post "/signup", to: "users#create"
  # get "/post", to: "posts#new"
  # post "/post", to: "posts#create"
  # get "/all_posts", to: "posts#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :posts
end
