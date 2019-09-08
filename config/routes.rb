Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  root 'blogs#index'
  resources :users
  resources :relationships, only:[:create, :destroy]
  resources :blogs do
    resources :comments
  end
end
