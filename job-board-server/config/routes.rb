Rails.application.routes.draw do
  # get 'session/new'
  resources :jobs
  resources :seekers
  resources :employers
  resources :users
end
