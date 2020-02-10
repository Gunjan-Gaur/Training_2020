class Event < ApplicationRecord
  has_many :users
  has_many :event_types
end
