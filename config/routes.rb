Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'  ### before login

  devise_for :admins

  namespace :admins do
    resources :dashboards
  end
end
