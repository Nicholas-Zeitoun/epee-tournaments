Rails.application.routes.draw do
  resources :fencers
  # root to: 'pages#home'
  root to: 'fencers#index'
  resources :fencers, except: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
