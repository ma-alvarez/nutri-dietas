class RegistrationsController < Devise::RegistrationsController
  include ApplicationHelper
  skip_before_filter :verify_authenticity_token, :only => :create
  
  def new
  	@socials = SocialSecurity.where("active = ?", true)
    @plans = Plan.where("social_security_id = ? AND active = ?", @socials.first.id,true)
  	super
  end

  def create
    @socials = SocialSecurity.where("active = ?", true)
    @plans = Plan.where("social_security_id = ? AND active = ?", @socials.first.id,true)
    super
  end

  def update_plans
  	@plans = Plan.where("social_security_id = ? AND active = ?", params[:social_security], true)
    respond_to do |format|
      format.js
    end
  end

  private
  def account_update_params
    params.require(:user).permit(:address, :city, :country, :phone, :cellphone, :social_security, :social_security_plan, :social_security_number, :email, :password, :password_confirmation, :current_password)
  end
end