Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  resources :users, only: [:show] do
    resources :requisitions, only: [:index,:new,:create]
    resources :personal_data, only: [:index, :show]
  end


  get '/user' => "users#home", :as => :user_root



  resources :requisitions

  resources :city_halls


end
