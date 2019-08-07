Rails.application.routes.draw do
  
	root 'home#index'
  get 'home/index'

  devise_for :users, controllers: {
  	registrations: "registrations"
  }

  resources :students
  resources :cities
  resources :photos
  resources :teachers
  resources :topics
  resources :types
  resources :tutorings

  # all admin routes
  get 'show_all_teachers', to: "admin#show_all_teachers"
end
