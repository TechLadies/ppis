Rails.application.routes.draw do

  devise_for :volunteers, :controllers => {:registrations => "registrations"}

  resources :centers

  root to: "pages#index"

end
