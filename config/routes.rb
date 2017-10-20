Rails.application.routes.draw do
  resources :users
  resources :orders
  root :to => 'welcome#index', :as => 'home'
  resources :products
  resources :kubernetes
  resources :htmls
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
