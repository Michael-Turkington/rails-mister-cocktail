Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resource :doses, only: [:create]
    resource :reviews, only: [:create]
  end
  resources :doses, only: [:destroy]
end
