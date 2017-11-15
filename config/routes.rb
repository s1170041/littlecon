Rails.application.routes.draw do
  resources :messages
  resources :foot_prints
  resources :answers
  resources :questions
  resources :enquetes
  resources :contacts
  resources :pages
  resources :favorites
  resources :notices
  resources :parties, except: [:destroy] do
    resources :participants, only: [:new, :create, :show, :destroy]
  end
  
  resources :profiles, except: [:destroy, :index] do
    collection do
      get "profile_top"
    end
  end

  devise_for :users

  devise_for :admins
  get 'parties/index'
  root to: "parties#index"
end
