Rails.application.routes.draw do
  get 'department/show'
  root 'department#show'
  get 'hospital/soft_delete/:id' =>'hospital#soft_delete'
  get "patient/:id/soft_delete", to:"patient#soft_delete", as: "patient_soft_delete"
  get "doctors/paginate", to:"doctors#paginate", as:"doctor_paginate"
  namespace :api do
    namespace :v1 do
      resources :doctors
      resources :hospital
    end
  end
  resources :hospital ,:doctors ,:patient

end
