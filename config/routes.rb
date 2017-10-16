Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :enquetes
  resources :contacts
  resources :pages
  resources :favorites
  resources :notices
  resources :parties

  devise_for :users, :controllers => {
    :sessions => 'users/sessions',
    :registrations => 'users/registrations'
  }

  get 'parties/index'

  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "parties#index"
end
