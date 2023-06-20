Rails.application.routes.draw do
  resources :purchases
  resources :widgets

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  root 'welcome#index'

  get '/sucess', :to => redirect('/success.html')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
