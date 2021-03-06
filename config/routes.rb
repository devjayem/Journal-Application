Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root 'pages#tasks', as: :authenticated_root
  end
  root 'pages#home'
  get 'pages/task'

  namespace :api, defaults: { format: :json} do
    namespace :v1 do
      resources :tasks, only: [:index, :show, :create, :update, :destroy]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
