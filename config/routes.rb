Rails.application.routes.draw do
  devise_for :users
  root 'complaints#index'

  resources :complaints
end
