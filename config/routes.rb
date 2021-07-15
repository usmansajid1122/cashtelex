Rails.application.routes.draw do
  root "home#index"

  devise_for :admins

  namespace :admins do
    resources :dashboards
    resources :about_us
    resources :terms
  end
end
