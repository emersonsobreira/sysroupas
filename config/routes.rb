Rails.application.routes.draw do

  resources :itensvendas
  devise_for :users
  resources :users
  resources :clientes
  resources :produtos, :path => "produtos" do
    collection do
      get "/relatorio"  => "produtos#relatorio", :as => "relatorio" 
    end
  end
  resources :vendas
  resources :fornecedors

  root "produtos#index"
end

