class PatientController < ApplicationController
  def new
    @patient = Patient.new
  end

  def index
    @patient = Patient.all.order(created_at: :desc)
  end

  def show
    @patient = Patient.find_by(id: params[:id])
  end


  def create
    patient = Patient.new patient_params
    patient.save
    redirect_to patient_index_path
  end

  def edit
    @patient = Patient.find_by(id: params[:id])
  end

  def update
      patient = Patient.find_by(id: params[:id])
      patient.update patient_params
      redirect_to patient_index_path
  end

  def destroy
    patient = Patient.find_by(id: params[:id])
    patient.destroy
    redirect_to patient_index_path
  end

  def soft_delete
    @patient = Patient.find_by(id: params[:id])
    if @patient.deleted
      @patient.update(deleted: false)
    else
      @patient.update(deleted: true)
    end
    redirect_to patient_index_path
  end

  def patient_params
    params.require(:patient).permit(:First_Name,:Last_Name,:age,:Address,:Mobile,:Gender,:hospital_id)
  end

end
