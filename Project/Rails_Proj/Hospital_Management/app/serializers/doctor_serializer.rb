class DoctorSerializer < ActiveModel::Serializer
  attributes :id , :first_name, :last_name, :qualifications, :gender, :salary, :email, :mobile, :age, :password, :confirm_password, :comments, :hospital
  def hospital
    {hospital_id: self.object.hospital.id,
    hospital_name: self.object.hospital.Name}
  end
end
