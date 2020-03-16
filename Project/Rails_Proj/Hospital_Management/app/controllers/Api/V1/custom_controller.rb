module Api
  module V1
    class CustomController < ActionController::API
      def authenticate_user
        if !token_decode(request.headers['Authorization'])
          return invalid_authentication
        end
        load_current_user!
        invalid_authentication unless @current_doctor
      end

      def invalid_authentication
        render json: {error: 'Invalid Authentication'}, status: :unauthorized
      end

      def token_decode(token)
        JWT.decode token, Rails.application.secrets.secret_key_base, false
      rescue
        nil
      end

      def load_current_user!
        @current_doctor = Doctor.find_by(id: token_decode(request.headers['Authorization'])[0]["doctor_id"])
      end
    end
  end
end
