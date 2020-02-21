class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients , through: :appointments
  belongs_to :hospital
  has_many :medical_records
end
