Rails.application.routes.draw do
  # get 'session/new'
  resources :jobs
  resources :seekers
  resources :employers
  resources :applications
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: :create do
    collection do
      post 'confirm'
      post 'login'
    end
  end

  resources :seekers do
    collection do
      post 'index'
    end
  end

end
