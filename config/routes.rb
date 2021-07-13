Rails.application.routes.draw do
  devise_for :admins, path: "admins"
  # set devise page as root page
  devise_scope :admin do
    authenticated :admin do
      root "admins/dashboards#index", as: :authenticated_root
    end

    unauthenticated do
      root "devise/sessions#new", as: :unauthenticated_root
    end
  end
  
  namespace :admins do
    resources :dashboards
  end
end
