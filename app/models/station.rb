class Station < ApplicationRecord
  belongs_to :property
  validates :minutes, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
