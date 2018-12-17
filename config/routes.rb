Rails.application.routes.draw do
 get 'voyages', to: 'pages#voyages'
 get 'stages', to: 'pages#stages'
 get 'prints', to: 'pages#prints'
 get 'occasions', to: 'pages#occasions'
 get 'femmes', to: 'pages#femmes'
 root to: 'pages#home'
end
