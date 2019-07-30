Rails.application.routes.draw do
 namespace :api, defaults: { format: :json } do
  namespace :v1 do
    resources :user do
      resource :games
    end
    post '/login', to: 'login#login', as: :login
  end
end
end
