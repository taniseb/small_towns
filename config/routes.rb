Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  resources :users, only: [:show] do
    resources :requisitions, only: [:index, :show]
    resources :personal_data, only: [:index, :show]

  end

  resources :requisitions, only: [:new,:create] do

    patch '/change_status', to: "requisitions#change_status", as: :change_status

  end

  get '/user_requisitions' => "requisitions#index", :as => :user_root





end
