class Partner < ApplicationRecord
  has_many :bookings
  has_one_attached :photo
end
