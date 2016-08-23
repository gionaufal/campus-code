Rails.application.routes.draw do
  get '/', to: 'home#index'
  #get '/cards/:id', to: 'cards#show'
  resources :cards, only: [:show, :index]
end
