Rails.application.routes.draw do
  get 'auth/:provider/callback' => 'sessions#callback'
  get 'auth/failure', to: redirect('/')
  devise_for :users, controllers:{confirmations: 'confirmations', omniauth_callbacks: "callbacks"}
  root 'home#index'
 
end
