class Partner < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
end
