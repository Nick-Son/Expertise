Rails.application.routes.draw do

  resources :profiles
  devise_for :users
  #set 'root'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
