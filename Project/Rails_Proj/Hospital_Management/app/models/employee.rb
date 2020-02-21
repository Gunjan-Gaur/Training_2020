class Employee < ApplicationRecord
  has_many :pictures ,:as => :combine
end
