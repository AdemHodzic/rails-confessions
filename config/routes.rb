Rails.application.routes.draw do
  devise_for :users
  resources :confessions
  root "confessions#index"
  get '/me/confessions', to: 'confessions#user_confessions'
end
