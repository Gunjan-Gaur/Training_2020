module Api
  module V1
    class HospitalController < CustomController
      def index
        @hospitals = Hospital.all
        render json: {status: "Successfull", message: 'Index action is successfull', doctors: ActiveModel::Serializer::CollectionSerializer.new(@hospitals, each_serializer: HospitalSerializer)} ,adapter: :json
      end

      def show
        @hospital = Hospital.find_by(id: params[:id])
        render json: @hospital ,adapter: :json
      end

      def create
        @hospital = Hospital.new hospital_params
        if @hospital.save
          render json: @hospitals ,adapter: :json, status: 200
        else
          render json: {error: 'Unable to create hospital'}, status: 422
        end
      end

      def update
        @hospital = Hospital.find_by(id: params[:id])
        if @hospital
          @hospital.update hospital_params
          render json: {message: 'Hospital successfully updated'}, status: 200
        else
          render json: {error: 'Unable to Update'}, status: 422
        end
      end

      def destroy
        @hospital = Hospital.find_by(id: params[:id])
        if @hospital
          @hospital.destroy
          render json: {message: 'Successfully destroyed'}, status: 200
        else
          render json: {error: 'Not destroyed'}, status: 400
        end
      end

      private
      def hospital_params
        params.permit(:Name , :Address , :State , :Beds)
      end

    end
  end
end
