class Jet < ApplicationRecord
  belongs_to :user
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
  has_many :bookings
  has_one_attached :photo
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :city, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :photo, presence:true
end
