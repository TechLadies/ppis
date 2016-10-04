Rails.application.routes.draw do

  devise_for :volunteers

  resources :centers

  root to: "pages#index"

end
