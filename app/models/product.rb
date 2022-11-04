class Product < ApplicationRecord
  validates :name, :price, presence: true
  validates :price, numericality: true
  validates :name, uniqueness: true

  enum status: [:published, :draft, :archived]

  scope :with_low_price, ->(value = 5.00) {where("price < ?", value)}
end
