class DoctorSerializer < ActiveModel::Serializer
  attributes :id , :first_name, :last_name, :qualifications, :gender, :salary, :email, :mobile, :age, :password, :confirm_password, :comments, :hospital_id
end
