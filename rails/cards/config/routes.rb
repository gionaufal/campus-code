Rails.application.routes.draw do
  root to: 'home#index'
  #get '/', to: 'home#index', as: 'home'
  #get '/cards/:id', to: 'cards#show'
  resources :cards

end
