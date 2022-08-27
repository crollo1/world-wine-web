Rails.application.routes.draw do
  

  get 'wines/new'
  get 'wines/create'
  get 'wines/index'
  get 'wines/show'
  get 'wines/edit'
  get 'wines/update'
  get 'wines/destroy'
  root to: 'pages#home'

  resources :wines, :regions


end
