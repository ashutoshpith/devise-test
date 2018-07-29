Rails.application.routes.draw do
  devise_for :users, controllers:{confirmations: 'confirmations'}
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
