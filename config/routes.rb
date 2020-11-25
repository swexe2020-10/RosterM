Rails.application.routes.draw do
  root 'classes#main'
  
  get 'top/login_form'
  post 'top/login'
  get 'top/logout'
  resources :teachers
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
