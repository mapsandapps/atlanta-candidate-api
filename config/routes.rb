Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  namespace :api, defaults: { format: :json } do
    resources :candidates, only: [:show]
    resources :districts, only: [:index]
    resources :offices, only: [:index, :show]
  end
end
