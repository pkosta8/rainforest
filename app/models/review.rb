class Review < ApplicationRecord

  validates :comment, presence: true

  belongs_to :product

end
