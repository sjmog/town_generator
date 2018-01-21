Rails.application.routes.draw do
  root to: 'towns#new'
  resources :towns do
    resources :people, only: [:index, :show]
    resources :establishments, only: :show
  end
end
