class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :jet

  validates :status, inclusion: { in: %w(accepted pending rejected) }
end
