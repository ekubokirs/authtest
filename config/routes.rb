WDIAuthtest::Application.routes.draw do
  
  get 'privacy' =>"site#privacy"
  get 'terms' => "site#terms"
  
  
  resource :sessions, only: [ :new, :create, :destroy]
  resource :password, only: [ :update]
  get "reset/:code" => "password#edit"

  get 'login' =>"sessions#new"
  post 'login' =>"sessions#create"
  delete 'logout'=> "sessions#destroy"
  get 'logout'=> "sessions#destroy"

  resources :users

  root 'site#index'
end
