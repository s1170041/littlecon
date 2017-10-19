Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :enquetes
  resources :contacts
  resources :pages
  resources :favorites
  resources :notices
  resources :parties, except: [:destroy]
  
  resources :profiles,except: [:destroy, :index] do
    collection do
      get "profile_top"
    end
  end

  devise_for :users

  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'parties/index'
  root to: "parties#index"
end
