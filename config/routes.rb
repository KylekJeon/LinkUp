Rails.application.routes.draw do

  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show, :get_groups, :update] do
      get 'groups'
    end
    resource :session, only: [:create, :destroy]
    resources :events, only: [:index, :show] do
      post 'rsvp'
      get 'fetch'
    end
    resources :groups, only: [:create, :show, :index] do
      resources :events, only: [:create]
      get 'fetch'
      member do
        post 'join'
      end
    end
  end

end
