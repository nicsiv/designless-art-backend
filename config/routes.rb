Rails.application.routes.draw do

  resources :users 
  resources :easels
  post '/users/auth', to: 'users#auth'
  post '/easels/image', to: 'easels#grab_image'

end
