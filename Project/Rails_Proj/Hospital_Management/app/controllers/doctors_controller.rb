class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
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

  def edit
      @edit_doctor = Doctor.find_by(id: params[:id])
  end

  def update
    @edit_doctor = Doctor.find_by(id: params[:id])
    if @edit_doctor.update doctor_params
      redirect_to doctors_path
    end
  end

  def destroy
    doctor = Doctor.find_by(id: params[:id])
    doctor.destroy
    redirect_to doctors_path
  end

  def doctor_params
    params.require(:doctor).permit(:First_name, :Last_name, :Qualifications, :Gender, :salary, :email , :mobile, :age , :password, :confirm_password, :comments ,:hospital_id)
  end

end
