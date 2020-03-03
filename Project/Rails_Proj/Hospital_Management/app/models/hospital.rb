class Hospital < ApplicationRecord
  has_many :patients
  has_many :doctors
  accepts_nested_attributes_for :doctors
  acts_as_paranoid
end
