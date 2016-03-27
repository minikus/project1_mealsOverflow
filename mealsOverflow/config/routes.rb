
Rails.application.routes.draw do
root :to => 'pages#welcome'

  get 'posts/index'

  get 'posts/new'

  get 'posts/edit'

  get 'posts/show'



  get 'reviews/index'

  get 'reviews/new'

  get 'reviews/edit'

  get 'reviews/show'


  get 'users/index'

  get 'users/new'

  get 'users/edit'

  get 'users/show'

  resources :users, :only => [:new, :create, :index, :update]
  get '/signup' => 'users#new'


  resources :posts, :reviews
end
