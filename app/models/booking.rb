class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :game
  # validations
  # start_date cannot be smaller than current date
  # end_date cannot be smaller than current date
  # accomplish via front-end?
  validates :game, presence: true
  validates :user, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true
end
