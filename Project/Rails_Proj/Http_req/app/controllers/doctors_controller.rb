class DoctorsController < ApplicationController
  def index
    @doctor = HTTParty.get('http://localhost:3001/api/v1/doctors', :headers => {'content.type'=>'application/json'})
  end
  def new
    @doctor = Doctor.new
  end
  def create
    @doctor = HTTParty.get('http://localhost:3001/api/v1/doctors?first_name=&last_name=&qualifications=&gender=&salary=&email=&mobile=&age=&password=&confirm_password=&comments=&hospital_id=', :headers => {'content.type'=>'application/json'})
  end
end
