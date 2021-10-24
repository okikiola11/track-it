Rails.application.routes.draw do
  post 'signup', to: 'users#create'
  post 'login', to: 'sessions#login'
  get 'logged_in', to: 'sessions#logged_in'
  delete 'logout', to: 'sessions#logout'
  resources :trainings, only: %i[show]
  get 'all/trainings', to: 'trainings#index'
  post 'create/training', to: 'trainings#create'
  post 'create/measure', to: 'measures#create'
  get 'all/measures', to: 'measures#index'
end
