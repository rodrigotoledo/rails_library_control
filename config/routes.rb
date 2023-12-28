Rails.application.routes.draw do
  root 'home#index'
  namespace :api do
    namespace :v1 do
      namespace :importer do
        resources :books, only: [:create]
      end
    end
  end
end
