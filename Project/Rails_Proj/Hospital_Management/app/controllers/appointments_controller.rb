class AppointmentsController < ApplicationController
  def new
      @appointments = Appointment.new
  end

  def index
      @appointments = Appointment.all.order(created_at: :desc)
  end
end
