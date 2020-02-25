class HospitalController < ApplicationController
  def index
    @hospital = Hospital.all
  end


  def show
    @hospital = Hospital.find_by(id: params[:id])
  end

  def new
    @hospital = Hospital.new
  end

  def create
      hospital = Hospital.new hospital_params
      hospital.save
      redirect_to hospital_index_path
  end


  def hospital_params
    params.require(:hospital).permit(:Name , :Address , :State , :Beds)
  end


  def destroy
    hospital = Hospital.find_by(id: params[:id])
    hospital.destroy
    redirect_to hospital_index_path
  end
end
