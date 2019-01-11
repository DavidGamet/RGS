Rails.application.routes.draw do
 resources :voyages
 resources :photos
 resources :occasions
 root to: 'pages#home'
end
