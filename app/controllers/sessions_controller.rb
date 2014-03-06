class SessionsController < ApplicationController
  def create
    ap env["omniauth.auth"]
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end
end
