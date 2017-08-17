Rails.application.routes.draw do
  root to: 'home#index'

  get 'home/index'
  resources :orders
  resources :users
  resources :sessions
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get '/download' => 'products#download'
  resources :products do
    collection { post :import}
  end

  post 'home/upload' => 'home#upload'

end
