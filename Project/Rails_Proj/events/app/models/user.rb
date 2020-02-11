class User < ApplicationRecord
  belongs_to :role
  has_many :events, dependent: :destroy
  has_many :event_types, through: :events
end
