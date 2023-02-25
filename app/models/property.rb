class Property < ApplicationRecord
  validates :name, presence: true
  validates :rent, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :address, presence: true
  validates :year, presence: true, numericality: { greater_than_or_equal_to: 0 }
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :all_blank
end