Rails.application.routes.draw do
  resources :vendas
  resources :produtos
  resources :clientes
  resources :fornecedors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end