Rails.application.routes.draw do
  root to: 'scraps#index'
  resources :scraps
end
