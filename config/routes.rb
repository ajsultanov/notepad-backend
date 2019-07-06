Rails.application.routes.draw do
  # http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :notes, only: [:index, :show]
      resources :weathers, only: [:index]
    end
  end
end
