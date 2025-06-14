Rails.application.routes.draw do
  namespace :agency do
    get "dashboard/index"
  end
  devise_for :admin_users
  devise_for :customers
  devise_for :cleaners
  devise_for :agency_admins

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check


  # Multi-Tenancy Routing

  # Tenant dashboards and resources (agency, cleaner, customer) on subdomains
  constraints(subdomain: /.+/) do
    namespace :agency do
      get "dashboard", to: "dashboard#index"
      resources :bookings
      resources :services
      resources :bookings
    end

    namespace :cleaner do
      get "dashboard", to: "dashboard#index"
      resources :bookings
      resources :payouts
    end

    namespace :customer do
      get "dashboard", to: "dashboard#index"
      resources :bookings
      resources :payments
    end
  end

  constraints subdomain: "" do
    namespace :admin do
      get "dashboard", to: "dashboard#index"
      resources :agencies
      resources :packages
      resources :payments
      resources :messages
    end
  end
end
