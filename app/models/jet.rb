class Jet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :price, presence: true, numericality: { only_integer: true }
end
