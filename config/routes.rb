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

  get '/support' => 'support#new'
  post '/support' => 'support#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
