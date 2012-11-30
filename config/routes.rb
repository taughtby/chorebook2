Checklist::Application.routes.draw do
  resources :children

  resources :tasks
  root to: 'tasks#index'
end
