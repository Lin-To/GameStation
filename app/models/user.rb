class User < ApplicationRecord
  has_many :games
  has_many :bookings
end
