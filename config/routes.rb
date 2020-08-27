Rails.application.routes.draw do
    namespace :api, defaults: {format: :json} do
      namespace :v1 do
        post '/auth/login', to: 'authentication#login'
        resources :users
        resources :transactions
      end
    end
  get 'welcome/index'
end
