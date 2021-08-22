Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      get '/', to: 'documentation#index'

      resources :games
    end
  end

  resources :games, only: %i[index]
end
