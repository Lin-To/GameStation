class User < ApplicationRecord
  has_many :games, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
