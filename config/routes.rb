Rails.application.routes.draw do
  devise_for :admins

  namespace :admins do
    resources :dashboards
  end
end
