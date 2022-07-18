Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :actions, only: %i[index new create destroy]
  resources :products, only: %i[index new create destroy]
  resources :elements, only: %i[index new create destroy]
  resources :customers
  resources :quotations do
    resources :rooms, only: %i[new create]
  end

  resources :rooms, only: %i[new create] do
    resources :tasks, only: %i[new create]
  end

  resources :rooms, only: %i[destroy]
  resources :tasks, only: %i[destroy]
end
