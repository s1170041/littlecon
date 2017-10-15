Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :enquetes
  resources :profiles
  resources :contacts
  resources :pages
  resources :favorites
  resources :notices
  resources :parties
  devise_for :users
  get 'top/index'

  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "top#index"
end
