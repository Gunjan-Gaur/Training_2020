class DoctorsController < ApplicationController
  before_action :paginate
  helper_method :sort_column, :sort_direction
  DOCTOR_PER_PAGE = 5

  def new
    @doctor = Doctor.new
  end

  def paginate
    # debugger
    @page = params.fetch(:page,0).to_i
    # @page = params[:page] ? (params[:page].to_i) : 0
    if params[:search]
      @doctors = Doctor.all.offset(@page*DOCTOR_PER_PAGE).limit(DOCTOR_PER_PAGE).where("first_name ilike ? or last_name ilike ? or email ilike ? or qualifications ilike?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%").order(sort_column + " " +sort_direction)
    else
      @doctors = Doctor.offset(@page*DOCTOR_PER_PAGE).limit(DOCTOR_PER_PAGE).order(sort_column + " " +sort_direction)
    end
  end

  def index
    @doctors = Doctor.limit(DOCTOR_PER_PAGE).offset(@page*DOCTOR_PER_PAGE).order(sort_column + " " +sort_direction)
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

  private
  def sort_column
    # params[:sort] || "first_name"
    params[:sort] || "Salary" || "first_name" ||"last_name"
  end

  def sort_direction
    params[:direction] || "asc"
  end
end
