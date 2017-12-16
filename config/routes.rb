Rails.application.routes.draw do
  root to: 'towns#new'
  resources :towns do
    resources :people
  end
end
