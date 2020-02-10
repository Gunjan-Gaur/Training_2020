class User < ApplicationRecord
  belongs_to :role
  has_many :events
  has_many :event_types, through: :events
end
