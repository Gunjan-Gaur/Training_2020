Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'department/show'
  root 'department#show'
  get 'hospital/soft_delete/:id' =>'hospital#soft_delete'
  get "patient/:id/soft_delete", to:"patient#soft_delete", as: "patient_soft_delete"
  resources :hospital ,:doctors ,:patient
end
