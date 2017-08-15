Rails.application.routes.draw do

  resources :orders

  resources :users
  resources :sessions
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get '/download' => 'products#download'
  resources :products do
    collection { post :import}
  end

  root to: 'orders#index'

end
