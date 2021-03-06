class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def require_login
    if !session[:user_id]
      redirect_to "/"
    end
  end

  def current_user
    User.find(session[:user_id])
  end
end
