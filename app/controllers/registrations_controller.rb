class RegistrationsController < Devise::RegistrationsController

  private

  def account_update_params
    params.require(:user).permit(:address, :city, :country, :phone, :cellphone, :social_security, :social_security_plan, :social_security_number, :email, :password, :password_confirmation, :current_password)
  end
end