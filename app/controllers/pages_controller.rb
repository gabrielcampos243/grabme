class PagesController < ApplicationController
  def home
  end

  def dashboard
    if current_user != nil
      @bookings = Booking.all
      @my_jobs = @bookings.where(partner_id: current_user.partner.id)
      @my_service = Partner.find_by(user_id: current_user.id)
      @my_bookings = Booking.where(user_id: current_user.id)

    # else
    #   redirect_to root_path
    end
  end
end
