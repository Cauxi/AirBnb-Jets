class Jet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :price, presence: true, numericality: { only_integer: true }
  validates :photo, presence:true
end
