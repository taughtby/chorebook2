Checklist::Application.routes.draw do
  get "splash/home"

  devise_for :users

  resources :children

  resources :tasks
  root to: 'tasks#index'
end
