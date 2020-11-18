Rails.application.routes.draw do
  root 'teachers#index'
  get 'teachers/new'
  get 'top/index'
  get 'top/new'
  #root 'top#index'
  resources :teachers
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
