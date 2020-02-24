class DoctorsController < ApplicationController
  def new
  end

  def index
    @doctors = Doctor.all
  end

  def create
    doctor = Doctor.new doctor_params
    doctor.save
    redirect_to doctors_path
  end

  def show
    @doctor = Doctor.find_by(id: params[:id])
  end

  def doctor_params
    params.require(:doctors).permit(:First_name, :Last_name, :Qualifications, :Gender, :salary, :email ,:mobile, :age ,:hospital_id)
  end

end
