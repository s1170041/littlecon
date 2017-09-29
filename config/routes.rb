Rails.application.routes.draw do
  devise_for :users
  get 'top/index'

  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "top#index"
end
