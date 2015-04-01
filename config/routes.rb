Rails.application.routes.draw do
    resources :products
    resources :users
    root 'products#index'
    #root :to => redirect('/products')
end
