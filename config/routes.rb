Rails.application.routes.draw do
  resources :users
  resources :blood_types
  resources :document_types
  resources :genders
  resources :neighborhoods
  resources :upzs
  resources :district_areas
  resources :cities
  resources :departments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
