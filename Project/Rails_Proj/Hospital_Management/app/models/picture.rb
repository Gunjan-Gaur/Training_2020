class Picture < ApplicationRecord
  belongs_to :combine, :polymorphic =>true
end
