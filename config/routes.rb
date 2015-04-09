Rails.application.routes.draw do
  
  root to: "users#index"
  
  get 'users/index'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'users/show'

  devise_for :users

  resources :answers #only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :events #only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :questions #only: [:index, :show, :new, :create, :edit, :update, :destroy]


end
