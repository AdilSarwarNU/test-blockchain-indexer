Rails.application.routes.draw do
  namespace :dashboard, defaults: {format: :json} do
    namespace :api do
      namespace :v1 do
        resources :users
        post '/auth/login', to: 'authentication#login'
      end
    end
  end
  get 'welcome/index'
end
