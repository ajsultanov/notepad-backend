Rails.application.routes.draw do
  # http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users #, only: [:index, :show, :create]
      resources :notes #, only: [:index, :show, :create, :update, :delete]
      resources :weathers #, only: [:create, :update]
    end
  end
end
