class AppointmentsController < ApplicationController
  def new
    @appointments = Appointment.new
  end

  def index
    @appointments = Appointment.all.order(created_at: :desc)
  end

  def show
    @appointments = Appointment.find_by(id: params[:id])
  end

  def create
    appointments = Appointment.new appointment_params
    appointments.save
    redirect_to appointments_path
  end

  def edit
    @appointments = Appointment.find_by(id: params[:id])
  end

  def update
    appointments = Appointment.find_by(id: params[:id])
    appointments.update appointment_params
    redirect_to appointments_path
  end

  def destroy
    appointments = Appointment.find_by(id: params[:id])
    appointments.destroy
    redirect_to appointments_path
  end

  def appointment_params
    params.require(:appointment).permit(:Start_date,:End_date,:doctor_id,:patient_id)
  end
end
