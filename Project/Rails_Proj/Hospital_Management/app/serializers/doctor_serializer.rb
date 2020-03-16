class DoctorSerializer < ActiveModel::Serializer
  # attributes :id , :first_name, :last_name, :qualifications, :gender, :salary, :email, :mobile, :age, :password, :confirm_password, :comments, :hospital
  def attributes *args
    data = super
    data[:doctor_id] = object.id
    data[:first_name] = object.first_name
    data[:last_name] = object.last_name
    data[:qualifications] = object.qualifications
    data[:gender] = object.gender
    data[:salary] = object.salary
    data[:email] = object.email
    data[:mobile] = object.mobile
    data[:age] = object.age
    data[:password] = object.password
    data[:confirm_password] = object.confirm_password
    data[:comments] = object.comments
    data[:hospital] = hospital
    data
  end
  def hospital
    {hospital_id: self.object.hospital.id,
    hospital_name: self.object.hospital.Name}
  end

end
