
Rails.application.routes.draw do


root :to => 'pages#welcome'
  resources :users do
    resources :reviews
  end
  resources :posts

  get '/signup' => 'users#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
