class HospitalSerializer < ActiveModel::Serializer
  has_many :doctors
  attributes :id, :Name, :Beds
end
