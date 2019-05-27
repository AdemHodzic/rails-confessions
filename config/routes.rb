Rails.application.routes.draw do
  devise_for :users
  resources :confessions
  root "confessions#index"
end
