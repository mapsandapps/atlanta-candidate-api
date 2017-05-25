Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'welcome/index'
  root 'welcome#index'
  resources :candidates, only: [:index, :show]
  resources :offices
  resources :media

  namespace :api, defaults: { format: :json } do
    resources :candidates, only: [:index, :show]
  end
end