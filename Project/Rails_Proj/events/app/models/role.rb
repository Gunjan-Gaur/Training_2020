class Role < ApplicationRecord
  has_many :users, dependent: :destroy
  validates :name ,exclusion: {in: %w(worker), message:"%{value} is reserved"} , length: { minimum: 2 } , allow_blank: true
  #validates_associated:users
end
