WDIAuthtest::Application.routes.draw do
  
  get 'privacy' =>"site#privacy"
  get 'terms' => "site#terms"
  
  
  resource :sessions, only: [ :new, :create, :destroy]

  get 'login' =>"sessions#new"
  post 'login' =>"sessions#create"
  delete 'logout'=> "sessions#destroy"

  root 'site#index'
end
