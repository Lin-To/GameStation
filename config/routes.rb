Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :games
      post '/login', to: 'login#login', as: :login
      resources :users, only: [:show]
    end
  end
end
