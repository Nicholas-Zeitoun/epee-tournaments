Rails.application.routes.draw do
  resources :tournaments do
    resources :participations, only: :create
  end
  resources :fencers
  # root to: 'pages#home'
  root to: 'tournaments#index'
  # root to: 'fencers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
