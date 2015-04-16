Rails.application.routes.draw do
    resources :products
    root 'products#index'
    get 'search', to: 'products#search'
    devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
    get "/auth/:provider/callback" => 'sessions#create'
end
