Rails.application.routes.draw do

  resources :orders

  get '/download' => 'products#download'
  resources :products do
    collection { post :import}
  end

  root to: 'orders#index'

end
