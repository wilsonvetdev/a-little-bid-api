Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/users', to: 'users#index'
  post '/users', to: 'users#create'

  get '/jobs', to: 'jobs#index'
  get '/jobs/:id', to: 'jobs#show'
  post '/jobs', to: 'jobs#create'
  delete '/jobs/:id', to: 'jobs#destroy'

  get '/bids', to: 'bids#index'
  get '/bids/:id', to: 'bids#show'
  post '/bids', to: 'bids#create'
  patch '/bids', to: 'bids#update'

  get '/contractors', to: 'contractors#index'
  post '/contractors', to: 'contractors#create'

end
