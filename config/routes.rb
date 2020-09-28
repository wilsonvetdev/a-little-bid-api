Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/users', to: 'users#index'
  post '/users', to: 'users#create'

  get '/jobs', to: 'jobs#index'
  get '/jobs/:id', to: 'jobs#show'
  post '/jobs', to: 'jobs#create'
end
