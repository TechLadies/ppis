Rails.application.routes.draw do

  devise_for :admins
  devise_for :volunteers, :controllers => { :registrations => "registrations" }

  namespace :admin do
    get :dashboard, to: 'dashboard#index'

    resources :volunteers

    get :admin_volunteers_new, to: 'admin/volunteers#new'
    get :admin_volunteer, to: 'admin/volunteers#show'

    root to: 'dashboard#index'
  end

  namespace :my do
    get :dashboard, to: 'dashboard#index'

    root to: 'dashboard#index'
  end

  resources :centers
  
  root to: "pages#index"

end
