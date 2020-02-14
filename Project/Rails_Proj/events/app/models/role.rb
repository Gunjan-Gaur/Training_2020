class Role < ApplicationRecord
  has_many :users, dependent: :destroy # ,:as => :combine
end
