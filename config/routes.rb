Rails.application.routes.draw do
  root 'blogs#index'
  get 'relationships/create'
  get 'relationships/destroy'
  resources :users, only: [:index]
  resources :relationships, only:[:create, :destroy]
  resources :blogs do
    resources :comments
  end
end
