Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  namespace :api, defaults: { format: :json } do
    resources :candidates, only: [:index, :show]
    resources :districts, only: [:index]
    resources :offices, only: [:index, :show]
  end
end
