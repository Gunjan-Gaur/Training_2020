class HospitalSerializer < ActiveModel::Serializer
  def doctors
    object.doctors.where(qualifications: 'dentist',gender: 'female')
  end
  # attributes :id, :Name, :Beds
  def attributes *args
    data = super
    data[:hospital_id] = object.id
    data[:Name] = object.Name
    data[:Address] = object.Address
    data[:Beds] = object.Beds
    data
  end
end
