Rails.application.routes.draw do
  get '/', to: 'home#index'
  resources :cards, only: [:show]
end
