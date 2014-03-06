class SessionsController < ApplicationController
  def create
    ap params
    Rails.logger.info params
    user = User.from_omniauth(params["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end
end
