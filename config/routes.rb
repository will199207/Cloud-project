Rails.application.routes.draw do
    resources :products
    resources :users
    root :to => redirect('/products')
end
