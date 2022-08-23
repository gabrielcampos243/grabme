class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @partner = Partner.find(params[:partner_id])
  end

  def create
    @partner = Partner.find(params[:partner_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.partner = @partner
    # @booking.all = @bookings
    if @booking.save

      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to partner_path(@partner)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
