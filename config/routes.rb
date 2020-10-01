Rails.application.routes.draw do

  root to: 'pages#home'


  devise_for :users

  #, :path => 'accounts', :controllers => { registrations: 'registrations'}

  resources :personal_data, only: [:index]

  get '/user' => "users#home", :as => :user_root

  # resources :requisitions

  # resources :city_halls

  # 1) colocar validação dos campos dos models
  # 2) começar pelo controle mais importante



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
