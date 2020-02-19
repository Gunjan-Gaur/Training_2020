class User < ApplicationRecord
  belongs_to :role
  belongs_to :Admin , class_name :role
  has_many :events, dependent: :destroy
  has_many :event_types, through: :events
  validate :age_greater_than_21
  def age_greater_than_21
    if age.present? && age < 21
      errors.add(:age, "can't be less than 21")
    end
  end
  validates :email ,confirmation: true, uniqueness: true
  validates :email_confirmation, presence:true
  validates :first_name ,format: { with: /\A[a-zA-Z]+\z/ ,message: "only allows letters"} , presence: {strict: true}
  validates :gender ,inclusion: { in: %w(male female others), message: "%{value} is not valid"} ,allow_nil: true
  validates :salary, numericality: true
  validates :age, numericality: { only_integer: true} ,allow_blank: true , on: :account_setup
  validates_each :first_name, :last_name do |record ,attr,value|
    record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
end
 validates :age, presence: true, if: :age_greater_than_30?

 def age_greater_than_30?
   if age > 30
     return true
   else
     return false
   end
 end
end
