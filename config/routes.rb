Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'quotations/:id/pdf', to: 'quotations#pdf', as: :pdf
  get 'quotations/:id/pdf.pdf', to: 'quotations#pdf', as: :to_pdf
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :activities, only: %i[index new create destroy]
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
