Rails.application.routes.draw do
  get 'users/new'

 resources :voyages
 resources :photos
 resources :occasions
 resources :users
 root to: 'pages#home'
end
