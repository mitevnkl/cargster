Rails.application.routes.draw do
  devise_for :users, controllers: {confirmations: 'users/confirmations'}

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :loads, only: [:show, :new, :create, :edit, :update]
  resources :trucks, only: [:show, :new, :create, :edit, :update]
  get "profile", to: "pages#profile"
  get '/truck_templates', to: 'trucks#truck_templates'
  get '/load_templates', to: 'loads#load_templates'
  patch '/trucks/:id/change_status', to: 'trucks#change_status', as: 'change_truck_status'
  patch '/loads/:id/change_status', to: 'loads#change_status', as: 'change_load_status'
end
