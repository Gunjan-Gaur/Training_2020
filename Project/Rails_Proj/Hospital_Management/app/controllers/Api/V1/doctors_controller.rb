module Api
  module V1
    class DoctorsController < ApplicationController

      #GET /doctors
      def index
        @doctors = Doctor.all
        render json: @doctors
      end

      #GET /doctor/:id
      def show
        @doctor = Doctor.find_by(id: params[:id])
        render json: @doctor
      end

      #Post /doctors
      def create
        @doctor = Doctor.new(doctor_params)
        if @doctor.save
          render json: @doctor
        else
          render error: {error: 'Unable to create User.'}, status: 400
        end
      end

      private
      def doctor_params
        params.require(:doctor).permit(:first_name, :last_name, :qualifications, :gender, :salary, :age, :hospital_id)
      end

    end
  end
end
