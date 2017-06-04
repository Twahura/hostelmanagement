Rails.application.routes.draw do
  get 'after_signin/index'

  resources :visitors
  resources :payments
  resources :students
  resources :managers
  resources :seats
  resources :hostels
  get 'afterlogin/index'

  devise_for :users
  get 'home/index'

  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  

 root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
