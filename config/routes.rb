Rails.application.routes.draw do
  resources :itensvendas
  devise_for :users
  resources :users
  resources :produtos
  resources :vendas
  resources :fornecedors
  root "produtos#index"
end