class Users::RegistrationsController < Devise::RegistrationsController
    # Antes de qualquer ação, podemos verificar se o usuário está autenticado
    before_action :redirect_if_authenticated, only: [:new, :create]
  
    # Sobrescrever o método new para personalizar o comportamento
    def new
      super
    end
  
    # Sobrescrever o método create para personalizar o comportamento
    def create
      super
    end
  
    # Sobrescrever o método edit para personalizar o comportamento
    def edit
      super
    end
  
    # Sobrescrever o método update para personalizar o comportamento
    def update
      super
    end
  
    # Sobrescrever o método destroy para personalizar o comportamento
    def destroy
      super
    end
  
    private
  
    # Redireciona o usuário autenticado para a página inicial
    def redirect_if_authenticated
      if user_signed_in?
        redirect_to root_path, alert: "Você já está autenticado!"
      end
    end
  end
  