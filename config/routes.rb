Rails.application.routes.draw do

  resources :users 
  resources :easels
  post '/users/auth', to: 'users#auth'

end
