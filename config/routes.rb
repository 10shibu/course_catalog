Rails.application.routes.draw do
  resources :enrollments
  resources :courses
  resources :subjects
  resources :users
  resources :instructors
  get 'welcome/index'
  root 'welcome#index'
  #resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
