class DoctorsController < ApplicationController
  def index
     # @search_term = 'Nobita'
     # @doc = Doctor.for (@search_term)
     @doctor = HTTParty.get('http://localhost:3001/api/v1/doctors', :headers => {'content.type'=>'application/json'})
     # debugger
  end
end
