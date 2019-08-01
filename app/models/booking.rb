class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :game
  # validations
  # start_date cannot be smaller than current date
  # end_date cannot be smaller than current date
  # accomplish via front-end?
  validates :game, presence: true
  validates :user, presence: true
end
