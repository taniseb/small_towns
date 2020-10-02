Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  resources :users, only: [:show] do
    resources :requisitions, only: [:index,:new,:create] do
      resources :personal_data, only: [:index, :show]
    end
  end


  get '/user' => "users#home", :as => :user_root
  # resources :requisitions


  #, :path => 'accounts', :controllers => { registrations: 'registrations'}


  resources :requisitions

  resources :city_halls

  # 1) colocar validação dos campos dos models
  # 2) começar pelo controle mais importante


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
