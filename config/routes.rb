Rails.application.routes.draw do
  resources :posts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'auth/:provider/callback' => 'sessions#callback'
  get 'auth/failure', to: redirect('/')
  devise_for :users, controllers:{confirmations: 'confirmations', omniauth_callbacks: "callbacks"}
  root 'home#index'
 
end
