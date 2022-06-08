Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"
  # get '/about', to: 'pages#about'
  # get '/contact', to: 'pages#contact'
  # post '/about', to: 'pages#about'
  # post '/movie', to: 'movies#all'
  get 'movie/(:id)', to: 'movies#show'
  post '/movie', to: 'movies#add'
  put '/movie/:id', to: 'movies#edit'
  delete '/movie/:id', to: 'movies#delete'
  # get 'movie/:id', to: 'movies#search'
end
