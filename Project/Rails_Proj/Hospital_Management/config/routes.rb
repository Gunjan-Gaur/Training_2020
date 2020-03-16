Rails.application.routes.draw do
  get "login", to:"session#new", as: "doctor_login"
  post "login", to:"session#create"
  get "logout", to: "session#log_out", as: "doctor_logout"

  get 'department/show'
  root 'department#show'
  get 'hospital/soft_delete/:id' =>'hospital#soft_delete'
  get "patient/:id/soft_delete", to:"patient#soft_delete", as: "patient_soft_delete"
  get "doctors/paginate", to:"doctors#paginate", as:"doctor_paginate"
  namespace :api do
    namespace :v1 do
      resources :doctors
      resources :hospital
      post 'login', to: 'session#login'
    end
  end
  resources :hospital, :doctors, :patient, :department

end
