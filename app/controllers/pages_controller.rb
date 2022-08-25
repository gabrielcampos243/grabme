class PagesController < ApplicationController
  def home
  end

  def dashboard
    @my_service = Partner.find_by(user_id: current_user.id)
    @bookings = Booking.where(user_id: current_user.id)
  end
end
