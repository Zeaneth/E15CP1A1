Rails.application.routes.draw do
  root "histories#index"
  resources :histories
<<<<<<< HEAD
  root "histories#index"
  
  get 'users/sign_in', to: 'sessions#new'
  get 'users/sign_up', to: "users#new"
  post 'users', to: "users#create"
  
  
=======
  get 'users/sign_up', to: "users#new"
  post 'users', to: "users#create"

  get 'users/sign_in', to: 'sessions#new'
>>>>>>> e24b61cf30f57235dabfa9559d991ac30cb52e3d
  resources :sessions, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
