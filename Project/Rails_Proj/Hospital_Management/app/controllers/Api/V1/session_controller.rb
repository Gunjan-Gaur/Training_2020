module Api
  module V1
    class SessionController < CustomController
      def login
        @doctor = Doctor.find_by(email: params[:email])
        @id = Doctor.find_by(id: params[:id])
        if @doctor and @doctor.password == params[:password]
          token = JWT.encode(
            {doctor_id: @doctor.id, exp: (Time.now + 2.weeks).to_i},
            Rails.application.secrets.secret_key_base,
            'HS256'
          )
        	render json: {token: token, message: "successfully passed" }, status: :ok
        else
        	render json: {message: "Not successfull"}, status: :unauthorized
        end
      end
    end
  end
end
