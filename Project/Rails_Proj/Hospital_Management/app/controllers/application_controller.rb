class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?

  def current_user
    Doctor.find_by(id: session[:doctor_id])
  end

  def logged_in?
    !current_user.nil?
  end
end
