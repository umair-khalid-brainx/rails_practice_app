Rails.application.routes.draw do
  root to: 'admin/products#index'

  get '/stories', to: redirect('/')
  get 'こんにちは', to: 'admin/products#index'

  namespace :admin do
    resources :products, only: [:index, :show], controller: 'products', constraints: { id: /[0-9]+/ }, path_names: { index: 'index', show: 'show' }

    # resolve("Product") { [:products] }
  end

  # get 'products', to: 'products#index', as: 'products'
  # get 'products/:id', to: 'products#show', as: 'product', id: /\d+/
end
