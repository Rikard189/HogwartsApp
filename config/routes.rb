Rails.application.routes.draw do
  get 'students/index'
  get 'students/new'
  get 'students/show'
  get 'students/edit'
  resources :professors
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
