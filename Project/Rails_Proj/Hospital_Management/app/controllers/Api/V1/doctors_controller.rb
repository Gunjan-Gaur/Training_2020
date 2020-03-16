module Api
  module V1
    class DoctorsController < CustomController
      before_action :authenticate_user

      #GET /doctors
      def index
        @doctors = Doctor.all
        render json: @doctors, adapter: :json
      end

      #GET /doctor/:id
      def show
        @doctor = Doctor.find_by(id: params[:id])
        render json: {status: "SUCCESS", mesage: "Show Doctors", data: DoctorSerializer.new(@doctor)}, adapter: :json
      end

      #Post /doctors
      def create
        @doctor = Doctor.new(doctor_params)
        if @doctor.save
          render json: @doctor, adapter: :json, status: 201
        else
          render json: {error: 'Unable to create User.'}, status: 422
        end
      end

      def update
        @doctor = Doctor.find_by(id: params[:id])
        if @doctor
          @doctor.update(doctor_params)
          render json: {message: "User successfully updated."}, adapter: :json, status: 200
        else
          render json: {message: 'Unable to update user.'}, status: 422
        end
      end

      def destroy
        @doctor = Doctor.find_by(id: params[:id])
        if @doctor
          @doctor.destroy
          render json: {message: 'User successfully deleted.'}, status: 200
        else
          render json: {message: 'Unable to delete user.'}, status: 400
        end
      end

      private
      def doctor_params
        params.require(:doctors).permit(:first_name, :last_name, :qualifications, :gender, :salary, :email , :mobile, :age , :password, :confirm_password, :comments ,:hospital_id)
      end

    end
  end
end
