class User < ApplicationRecord
  belongs_to :role, class_name: "User"
  has_many :employees ,class_name: "User", foreign_key: "role_id"

  has_many :events, dependent: :destroy
  has_many :event_types, through: :events
  validate :age_greater_than_21
  def age_greater_than_21
    if age.present? && age < 21
      errors.add(:age, "can't be less than 21")
    end
  end
  validates :email ,confirmation: true, uniqueness: true
  #validates :email_confirmation, presence:true
  validates :first_name , :last_name ,format: { with: /\A[a-zA-Z]+\z/ ,message: "only allows letters"} , presence: {strict: true}
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

  scope :age_greater_than_21,  ->{where("age > 21")}
  scope :age_and_address,  ->{age_greater_than_21.where("address like ?", "Goa")}
  scope :created_before,  ->(date) {where("created_at < ?",date).select(:id)}
  scope :address_delhi,  ->(address) {where("address like ?",address) if address.present?}
  #default_scope { where("email_confirmation is null") }

  # Callbacks
  before_validation :last_name_is_empty

  def last_name_is_empty
    if last_name.nil?
      self.last_name = first_name unless first_name.blank?
    end
  end

  before_create do
    self.first_name = gender.capitalize if first_name.blank?
  end

  after_validation :normalize_name
  # private
  def normalize_name
    self.first_name = first_name.downcase
  end

  after_initialize do |u|
    puts "initialized an object"
  end

  after_find do |user|
    puts "You have find an object"
  end

  after_touch do
    puts "Touched an object"
  end
end
