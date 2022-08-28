Rails.application.routes.draw do
  

  root to: 'pages#home'

  resources :wines, :regions, :reviews


end
