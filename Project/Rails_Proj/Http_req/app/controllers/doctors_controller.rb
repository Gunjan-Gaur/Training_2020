class DoctorsController < ApplicationController
  include HTTParty
  def index
    @doctor = HTTParty.get('http://localhost:3001/api/v1/doctors', :headers => {'content.type'=>'application/json'})
  end

  def new
     @doctor = Doctor.new
  end
    # @doctor = HTTParty.post('http://localhost:3001/api/v1/doctors?',
    #   body: "#{make}",
    #    # :first_name => "dgb", #    "#{first_name}",
         # :last_name => "kcjb",
         # :qualifications => "gckh",
         # :gender => "dkjb",
         # :salary => "jkcb",
         # :email => "jbde",
         # :mobile => 67666767,
         # :age => 23,
         # :password => "ded",
         # :confirm_password => "djb",
         # :comments => "kdnc",
         # :hospital_id => 1,
      # headers: {'content.type'=>'application/json'})

      def create
        doctor = Doctor.new doctor_params
        @doctor = HTTParty.post('http://localhost:3001/api/v1/doctors',
          body: "#{doctor}",  headers: {'content.type'=>'application/json'})
      end


      def edit
        @edit_doctor = HTTParty.patch('http://localhost:3001/api/v1/doctors/1' , body: {:first_name => "Neha", :hospital_id => 2} , headers: {'content.type'=>'application/json'})
      end


      def update
      end

  private

  def doctor_params
      params.permit(:first_name, :last_name, :qualifications, :gender, :salary, :email , :mobile, :age, :hospital_id, :password, :confirm_password, :comments)
  end
end
