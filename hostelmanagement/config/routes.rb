Rails.application.routes.draw do
  get 'login/index'

  resources :visitors
  resources :payments
  resources :students
  resources :managers
  resources :seats
  resources :hostels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
