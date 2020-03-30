class Doctor < ApplicationRecord
  include HTTParty

  base_uri 'http://localhost:3000/api/v1/doctors'
  default_params fields: "doctor_id,first_name", q:"search"
  format :json

  def self.for term
    get("",query: { query: term})["doctors"]
  end

end
