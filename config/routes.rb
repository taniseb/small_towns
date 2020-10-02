Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  resources :users, only: [:show] do
    resources :requisitions, only: [:index,:new,:create]
    resources :personal_data, only: [:index, :show]
  end

  get '/user', to: "users#home", as: :user_root


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
