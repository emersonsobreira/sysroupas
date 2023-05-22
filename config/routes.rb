Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :produtos
  resources :fornecedors
  root "produtos#index"
end