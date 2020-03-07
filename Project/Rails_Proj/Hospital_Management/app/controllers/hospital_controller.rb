class HospitalController < ApplicationController
  def index
    @hospital = Hospital.all
  end


  def show
    @hospital = Hospital.find_by(id: params[:id])
  end

  def new
    @hospital = Hospital.new
    2.times {@hospital.doctors.build}
  end

  def create
      hospital = Hospital.new hospital_params
      hospital.save
      redirect_to hospital_index_path
  end

  def edit
      @hospital = Hospital.find_by(id: params[:id])
  end

  def update
    @hospital = Hospital.find_by(id: params[:id])
    if @hospital.update hospital_params
      redirect_to hospital_index_path
    end
  end


  def hospital_params
    params.require(:hospital).permit(:Name , :Address , :State , :Beds ,doctors_attributes: [:first_name, :last_name, :password, :confirm_password])
  end

  def soft_delete
    hospital = Hospital.find_by(id: params[:id])
    hospital.destroy
    redirect_to hospital_index_path
  end

  def destroy
    hospital = Hospital.find_by(id: params[:id])
    hospital.destroy
    redirect_to hospital_index_path
  end
end
