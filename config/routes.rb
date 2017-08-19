Rails.application.routes.draw do
  post 'image/img_upload'

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
  post '/seed' => 'home#seed'
  get 'home/admin'
end
