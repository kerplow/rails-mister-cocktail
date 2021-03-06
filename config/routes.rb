Rails.application.routes.draw do
  root 'cocktails#index'

  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :doses, only: [:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
