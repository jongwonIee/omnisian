Rails.application.routes.draw do
  root to: 'orders#index'

  resources :orders

  resources :users
  resources :sessions
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get '/download' => 'products#download'
  resources :products do
    collection { post :import}
  end

end
