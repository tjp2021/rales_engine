Rails.application.routes.draw do





  get 'random/show'

  namespace :api do
    namespace :v1 do
      namespace :merchants do
        get '', to: "merchants#index"
        get '/find', to: "search#show"
        get '/find_all', to: "search#index"
        get '/random', to: "random#show"
        get '/:id', to: "merchants#show"
      end
      namespace :customers do
        get '', to: "customers#index"
        get '/find', to: "search#show"
        get '/find_all', to: "search#index"
        get '/random', to: "random#show"
        get '/:id', to: "customers#show"
      end
      namespace :transactions do
        get '', to: "transactions#index"
        get '/find', to: "search#show"
        get '/find_all', to: "search#index"
        get '/random', to: "random#show"
        get '/:id', to: "transactions#show"
      end
    end
  end


end
