class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new(doctor_params)
    @doctor.avatar.attach(io: File.open('app/assets/images/Doctor.jpeg', filename: 'Doctor.jpeg' ,content_type: 'image/jpeg'))
  end
  # File.open('') do |f|
  #   @doctor.avatar = f
  # end

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
    params.require(:doctor).permit(:First_name, :Last_name, :Qualifications, :Gender, :salary, :email , :mobile, :age , :password, :confirm_password, :comments ,:hospital_id, {avatar:[]})
  end

end
