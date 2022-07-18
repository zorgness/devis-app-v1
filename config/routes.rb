Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :customers, only: %i[index show new create]
  resources :quotations, only: %i[index show new create] do
    resources :rooms, only: %i[new create]
  end

  resources :rooms, only: %i[new create] do
    resources :tasks, only: %i[new create]
  end
end
