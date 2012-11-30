Checklist::Application.routes.draw do
  devise_for :users

  resources :children

  resources :tasks
  root to: 'tasks#index'
end
