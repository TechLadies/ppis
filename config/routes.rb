Rails.application.routes.draw do

  devise_for :admins
  devise_for :volunteers, :controllers => { :registrations => "registrations" }

  namespace :admin do
    get :dashboard, to: 'dashboard#index'

    resources :events, only: [:index, :create, :new, :edit, :show, :update] do
      patch 'publish', on: :member
      patch 'cancel', on: :member

      resources :volunteer_events, only: [:index] do
        get :approved, on: :collection
        get :pending, on: :collection
        get :invited, on: :collection
        get :declined, on: :collection

        patch 'invite', on: :member
        patch 'approve', on: :member
        patch 'decline', on: :member
        patch 'attended', on: :member
      end
    end

    resources :centers, only: [:index, :create, :new, :edit, :show, :update]
    resources :volunteers, only: [:index, :create, :new, :edit, :show, :update] do
      patch 'reactivate', on: :member
    end

    root to: 'dashboard#index'
  end

  namespace :my do

    resources :events, only: [:index] do
      get 'past_events', on: :collection

      post 'register', on: :member
      patch 'unregister', on: :member

      resources :volunteer_events, only: [] do
        patch 'approve', on: :member
        patch 'decline', on: :member
      end

    end

    resource :profile

    root to: 'events#index'
  end

  resources :events 
  
  root to: "events#index"

end
