class BookingsController < ApplicationController
  def show
    @bookings = Booking.find(params[:id])
    @bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.list = @bookings
    if @booking.save
      redirect_to partner_path(@partner)
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
    params.require(:id).permit(:description)
  end
end
