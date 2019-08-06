Rails.application.routes.draw do
  
  resources :topics
  resources :types
	root 'home#index'
  get 'home/index'

  devise_for :users, controllers: {
  	registrations: "registrations"
  }

  resources :students
  resources :cities
  resources :photos
  resources :teachers
end
