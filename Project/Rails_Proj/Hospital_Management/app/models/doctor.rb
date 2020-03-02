class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients , through: :appointments
  belongs_to :hospital
  has_many :medical_records
  validates :First_name , :Last_name , format: {with: /\A[a-zA-Z]+\z/ ,message: 'Only alphabets are allowed'}, presence: {strict: true}
  validates :salary ,numericality: true
  validates :mobile ,numericality: {only_integer: true} ,length: {is: 10}
  validates :email , format: {with: /\A[a-zA-Z0-9.]+@[a-zA-Z]+\.[a-zA-Z.]{3}+\z/ ,message: 'Format should match'}
  validates :password, presence:true, confirmation: {message: "password didn't match"},length: {is: 8}
  validates :confirm_password, presence: true
end
