class Patient < ApplicationRecord
  belongs_to :hospital

  has_many :appointments
  has_many :doctors , through: :appointments

  has_many :medical_records
end
