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
end
