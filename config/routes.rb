Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails do
    resources :doses
    resources :stars, only: [:create]
  end

  resources :doses, only: [:destroy]
end
