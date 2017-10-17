Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :enquetes
  resources :contacts
  resources :pages
  resources :favorites
  resources :notices
  resources :parties, except: [:destroy, :index]
  
  resources :profiles do
    collection do
      get "profile_top"
    end
  end

  devise_for :users
  get 'parties/index'

  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "parties#index"
end
