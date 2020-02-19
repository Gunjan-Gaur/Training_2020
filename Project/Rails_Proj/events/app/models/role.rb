class MyValidator < ActiveModel::Validator
  def validate(role)
    unless role.name.starts_with? 'A'
      role.errors[:name] << 'name should start with A'
  end
 end
end
class Role < ApplicationRecord
  has_many :users, dependent: :destroy
  validates :name ,exclusion: {in: %w(worker), message:"%{value} is reserved"} , length: { minimum: 2 } , allow_blank: true
  include ActiveModel::Validations
  validates_with MyValidator
end
