Rails.application.routes.draw do

  get 'posts/index'
  get 'posts/update' , to: "posts#update"
  post 'posts/update', to: "posts#edit"


  get '/signup', to: 'signup#index'
  post '/signup', to: 'signup#create'
  get '/signin', to: 'signin#index'
  resources :signup, :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'signin#index'
end
