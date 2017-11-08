Rails.application.routes.draw do

  root 'pages#home'
  
  Rails.application.routes.draw do
    resources :bookings
    devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
  end
  
  resources :bookings
  resources :profiles
  resources :conversations do
    resources :messages
  end 

  #post '/bookings' 

  get '/support' => 'support#new'
  post '/support' => 'support#create'
  get '/support/faq' => 'support#faq'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
