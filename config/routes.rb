Rails.application.routes.draw do
  get 'acceuil/index'
  resources :index
  resources :blagues
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
