Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  resources :companies
  resources :countries
  resources :states
  resources :cities
  resources :places
  resources :nodes
  resources :regions
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
