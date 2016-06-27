class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :login_layout

  protected

  def login_layout
    if current_user
      'application'
    else
      'login'
    end
  end
end
