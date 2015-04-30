Rails.application.routes.draw do
    resources :products do
      resources :pledges
    end
    root 'products#index'
    get 'search', to: 'products#search'
    devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks"}
    resources :users, except: [:new, :edit, :update, :destroy, :create]
    get "/auth/:provider/callback" => 'sessions#create'
    post "/products/:id/confirm", to: 'pledges#show'
    get '/products/:id/confirm', to: 'pledges#show'

end
