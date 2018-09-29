Rails.application.routes.draw do
  resources :awards
  resources :enterprise_offices
  resources :enterprises
  resources :civicoins
  resources :enterprise_sectors
  resources :report_parameter_data
  resources :reports
  resources :report_parameters
  resources :report_types
  resources :report_classes
  resources :report_categories
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
