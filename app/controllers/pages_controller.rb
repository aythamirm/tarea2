class PagesController < ApplicationController
  def index
  end

  def two_factor_enabled
    @user = User.last # sólo hay un usuario en este ejemplo
    otp_code_token =  params[:multi_factor_authentication][:otp_code_token]  if params[:multi_factor_authentication][:otp_code_token].present?
    if @user.authenticate_otp(otp_code_token) # otp_code_token == @user.otp_code
      respond_to do |format|
        format.html {@lock = true}
      end
    end
  end
end
