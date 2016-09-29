Rails.application.routes.draw do
  get 'page/test'

  devise_for :volunteers
  root to: "page#test"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
