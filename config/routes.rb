Rails.application.routes.draw do
  root to: 'towns#new'
  resources :towns
end
