class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    layout :layout
    def layout
        if current_user != nil
            @layout = "application"
        else
            @layout = "applicationlogin"
        end
    end 
end


class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :telefone])
      devise_parameter_sanitizer.permit(:account_update, keys: [:nome, :telefone])
    end
  end
  