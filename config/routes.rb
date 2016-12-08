Rails.application.routes.draw do

  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show, :get_groups] do
      get 'groups'
      resources :events, only: [:index]
    end
    resource :session, only: [:create, :destroy]
    resources :events, only: [:index]
    resources :groups, only: [:create, :show, :index] do
      resources :events, only: [:create, :index]
      get 'fetch'
      member do
        post 'join'
      end
    end
  end

end
