Rails.application.routes.draw do
  namespace :v1 do
    resources :tweets, only: [:index]

    post '/authentication', to: 'authentication#create'
  end
end
