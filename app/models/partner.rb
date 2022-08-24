class Partner < ApplicationRecord
  # validates :user_id, uniqueness: {  message: "You've already made a comment!" }
  has_many :bookings
end
