class Game < ApplicationRecord
  belongs_to :user
  # But a game cannot have multiple bookings with overlapping time intervals
  has_many :bookings
  validates :name, presence: true
end
