Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :candidates, only: [:show]
      resources :districts, only: [:show]
      resources :offices, only: [:index, :show]
    end
  end
end
