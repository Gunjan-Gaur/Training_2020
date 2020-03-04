class Patient < ApplicationRecord
  belongs_to :hospital

  has_many :appointments
  has_many :doctors , through: :appointments

  has_many :medical_records

  scope :not_deleted, -> { where(deleted: false) }
  scope :deleted, -> { where(deleted: true) }

  # #create the soft delete method
  # def soft_delete
  #   update(deleted: true)
  # end
  #
  # # make an undelete method
  # def undelete
  #   update(deleted: false)
  # end
end
