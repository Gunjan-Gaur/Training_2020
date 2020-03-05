class DoctorsController < ApplicationController
  before_action :paginate ,:previous_page
  DOCTOR_PER_PAGE = 7
  def new
    @doctor = Doctor.new
  end

  def previous_page
      @page1 = params.fetch(:page1,1).to_i
      @doctors = Doctor.all.offset(@page1*DOCTOR_PER_PAGE).limit(DOCTOR_PER_PAGE).order(:First_name)
  end

  def paginate
        # debugger
        @page = params.fetch(:page,0).to_i
         # @page = params[:page] ? params[:page].to_i : 0
       @doctors = Doctor.all.offset(@page*DOCTOR_PER_PAGE).limit(DOCTOR_PER_PAGE).order(:First_name)
      # @doctors = Doctor.first(10).last(5)
  end

  def index
    @doctors = Doctor.order(:First_name).limit(DOCTOR_PER_PAGE).offset(@page*DOCTOR_PER_PAGE)
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
    params.require(:doctor).permit(:First_name, :Last_name, :Qualifications, :Gender, :salary, :email , :mobile, :age , :password, :confirm_password, :comments ,:hospital_id,:avatar)
  end

end
