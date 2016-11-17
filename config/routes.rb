Rails.application.routes.draw do

  devise_for :admins
  devise_for :volunteers, :controllers => { :registrations => "registrations" }

  namespace :admin do
    get :dashboard, to: 'dashboard#index'

    resources :events, only: [:index, :create, :new, :edit, :show, :update]
    resources :centers, only: [:index, :create, :new, :edit, :show, :update]
    resources :volunteers, only: [:index, :create, :new, :edit, :show, :update] do
      patch 'reactivate', on: :member
    end

    root to: 'dashboard#index'
  end

  namespace :my do

    resources :events, only: [] do
      get 'new_events', on: :collection
      get 'upcoming_events', on: :collection
      get 'past_events', on: :collection
    end

    resource :profile

    root to: 'dashboard#index'
  end

  root to: "pages#index"

end
