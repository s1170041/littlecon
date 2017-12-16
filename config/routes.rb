Rails.application.routes.draw do
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

  resources :messages, except: [:edit, :update] do
    resources :message_details, only: [:new, :create]
  end

  devise_for :users
  devise_for :admins
  get 'parties/index'
  root to: "parties#index"

  get  "trainings/training1" => "trainings#training1"
  get  "trainings/training2" => "trainings#training2"
  get  "trainings/training3" => "trainings#training3"


end
