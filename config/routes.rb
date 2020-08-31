Rails.application.routes.draw do
  root to: 'home#index'
  namespace :api, defaults: {format: :json} do
      namespace :v1 do
        post '/auth/login', to: 'authentication#login'
        resources :users
        resources :comments
        resources :transactions do
          member do
            get :comments
          end
        end
      end
    end
  #get 'welcome/index'
   match "*path", to: 'home#index', via: :all
end
