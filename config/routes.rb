Rails.application.routes.draw do

  root 'pages#home'
  
  Rails.application.routes.draw do
    devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
  end

  resources :profiles
  resources :conversations do
    resources :messages
  end 
  #devise_for :users
  #set 'root'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
