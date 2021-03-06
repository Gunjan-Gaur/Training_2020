class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients , through: :appointments
  belongs_to :hospital
  has_many :medical_records
  mount_uploader :avatar , AvatarUploader

  scope :next_page, ->(id){where("id = ?",id+1)  }
  # scope :deleted, -> { where(deleted: true) }

  # #create the soft delete method
  # def soft_delete
  #   update(deleted: true)
  # end
  #
  # # make an undelete method
  # def undelete
  #   update(deleted: false)
  # end

  # validates :First_name , :Last_name , format: {with: /\A[a-zA-Z]+\z/ ,message: 'Only alphabets are allowed'}
  # validates :salary ,numericality: true
  # validates :mobile ,numericality: {only_integer: true} ,length: {is: 10}
  # validates :email , format: {with: /\A[a-zA-Z0-9.]+@[a-zA-Z]+\.[a-zA-Z.]{3}+\z/ ,message: 'Format should match'}
  # validates :password, presence: true, confirmation: {message: "password didn't match"},length: {minimum: 8}
  # validates :confirm_password, presence: true,length: {minimum: 8}
end
