Rails.application.routes.draw do
  

  
  root to: 'pages#home'

  get 'login' => 'session#new'
  post 'login' => 'session#create'
  delete 'login' => 'session#destroy'

  resources :wines, :regions, :reviews, :users


end
