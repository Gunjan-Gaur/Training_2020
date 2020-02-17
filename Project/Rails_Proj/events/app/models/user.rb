class User < ApplicationRecord
  belongs_to :role
  has_many :events, dependent: :destroy
  has_many :event_types, through: :events
  validates :email , confirmation:true ,uniqueness: true
  validates :email_confirmation, presence:true
  validates :first_name ,format: { with: /\A[a-zA-Z]+\z/ ,message: "only allows letters"}
  validates :gender ,inclusion: { in: %w(male female others), message: "%{value} is not valid"} ,allow_nil: true
  validates :salary, numericality: true
  validates :age, numericality: { only_integer: true}
  validates_each :first_name, :last_name do |record ,attr,value|
    record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
end
end
