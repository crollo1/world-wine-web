Rails.application.routes.draw do
  

  
  root to: 'pages#home'

  get 'login' => 'session#new'
  post 'login' => 'session#create'
  delete 'login' => 'session#destroy'

  post 'wines/:id/add_remove_favourites' => 'wines#add_remove_favourites', as: 'add_remove_wine'

  resources :wines, :regions, :reviews, :users


end
