class Product < ApplicationRecord
    has_many :pictures ,:as => :combine
end
