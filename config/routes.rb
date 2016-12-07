Rails.application.routes.draw do

  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show, :get_groups] do
      get 'groups'
    end
    resource :session, only: [:create, :destroy]
    resources :groups, only: [:create, :show, :index] do
      get 'fetch'
      member do
        post 'join'
      end
    end
  end

end
