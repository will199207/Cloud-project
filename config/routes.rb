Rails.application.routes.draw do
    resources :products
    root 'products#index'
    #root :to => redirect('/products')
    devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
    get "/auth/:provider/callback" => 'sessions#create'
    #devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
    #devise_scope :user do
     #   get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
    #end
end
