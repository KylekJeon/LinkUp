Rails.application.routes.draw do

  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:index, :create, :show, :get_groups, :update] do
      get 'groups'
    end
    resource :session, only: [:create, :destroy]
    resources :events, only: [:index, :show, :update] do
      post 'rsvp'
      get 'fetch'
    end
    resources :groups, only: [:create, :show, :index, :update] do
      resources :events, only: [:create]
      get 'fetch'
      member do
        post 'join'
        delete 'leave'
        post 'admin'
        delete 'unadmin'
        get 'discussion'
        post 'create_discussion'
      end
    end
    resources :discussions, only: [:index, :create, :destroy] do
      post 'comment'
    end
  end

end
