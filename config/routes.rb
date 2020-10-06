Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  resources :users, only: [:show] do
    resources :requisitions, only: [:index,:new,:create,:show] do
      patch '/change_status', to: "requisitions#change_status", as: :change_status
    end
    resources :personal_data, only: [:index, :show]

  end



  get '/user' => "users#home", :as => :user_root



  #resources :requisitions

  #resources :city_halls


end
