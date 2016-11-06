Rails.application.routes.draw do

  devise_for :admins
  devise_for :volunteers, :controllers => { :registrations => "registrations" }

  namespace :admin do
    get :dashboard, to: 'dashboard#index'

    resources :volunteers, only: [:index, :create, :new, :edit, :show, :update]

    root to: 'dashboard#index'
  end

  namespace :my do
    resource :profile

    root to: 'dashboard#index'
  end

  resources :centers
  
  root to: "pages#index"

end
