Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :goals
  
  # , only: [:index, :show, :create, :destroy, :edit, :new], 
 

  root to: "home#index"
   
  patch '/goals/:id', to: 'goals#update_counter'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
