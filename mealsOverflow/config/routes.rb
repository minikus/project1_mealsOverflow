
Rails.application.routes.draw do
root :to => 'pages#welcome'
  resources :users, :only => [:new, :create, :index, :update]
  resources :posts
  resources :reviews

  get '/signup' => 'users#new'


  resources :posts, :reviews
end
