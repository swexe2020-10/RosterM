Rails.application.routes.draw do
  root 'top#login_form'
  
  get 'top/login_form'
  post 'top/login'
  get 'top/logout'
  resources :teachers
  resources :students
  get 'classes/main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
