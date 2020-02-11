class EventType < ApplicationRecord
    has_many :events
    has_many :user, through: :events
end
