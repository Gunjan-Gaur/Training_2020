Rails.application.routes.draw do
  get 'doctors/index'
  root 'doctors#index'
  resources :doctors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
