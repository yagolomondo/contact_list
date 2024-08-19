class ApplicationController < ActionController::Base
  include SessionsHelper

  private
    def required_logged_in_user
      unless required_logged_in_user
        flash[:danger]='Area restrita. Por favor, realize o login'
        redirect_to entrar_path
      end
    end
end
