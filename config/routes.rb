require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :human_resources
  resources :event_operations
  resources :marketing_contents
  resources :communication_designs
  resources :speakers
  resources :speaking_topics
  resources :sponsorship_levels
  resources :sponsors
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'speakers#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
