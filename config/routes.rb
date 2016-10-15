Rails.application.routes.draw do

  devise_for :admins
  devise_for :volunteers, :controllers => {:registrations => "registrations"}

  namespace :admin do
    get :dashboard, to: 'dashboard#index'

    root to: 'dashboard#index'
  end

  namespace :my do

  end

  resources :centers
  
  root to: "pages#index"

end
