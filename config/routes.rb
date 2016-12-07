Rails.application.routes.draw do

  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :destroy]
    resources :groups, only: [:create, :show, :index] do
      member do
        post 'join'
      end
    end
  end

end
