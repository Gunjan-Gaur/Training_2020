class SessionController < ApplicationController
  def new
  end

  def create
    @doctor = Doctor.find_by(email: params[:email])
    @id = Doctor.find_by(id: params[:id])
    if @doctor and @doctor.password == params[:password]
    	session[:doctor_id] = @doctor.id
    	redirect_to doctor_path(@id), notice: 'Not found'
    else
    	redirect_to doctor_login_url
    end
  end

  def log_out
    session[:doctor_id] = ''
    redirect_to doctors_path
  end

end
