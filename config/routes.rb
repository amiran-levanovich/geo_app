Rails.application.routes.draw do
  root "tickets#index"

  namespace :api do
    namespace :v1 do
      resources :tickets, only: [:create]
    end
  end

  resources :tickets, only: [:index, :show]
end
