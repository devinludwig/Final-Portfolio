class RegistrationsController < Devise::RegistrationsController
 before_action :authenticate_admin!

 def new
 end

 def create

 end

  protected

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password, :avatar)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password, :avatar)
  end
end
