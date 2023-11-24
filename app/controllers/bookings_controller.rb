class BookingsController < ApplicationController
  before_action :set_jet, only: [:new, :create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    @start_date = booking_params[:start_date].split(" to ")[0].to_date
    @end_date = booking_params[:start_date].split(" to ")[1].to_date

    @booking.start_date = @start_date
    @booking.end_date = @end_date

    @booking.jet = @jet
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path
  end
  def reject
    @booking = Booking.find(params[:id])
    @booking.status = "rejected"
    @booking.save
    redirect_to dashboard_path
  end

  private

  def set_jet
    @jet = Jet.find(params[:jet_id])
  end

  def booking_params
    params.require(:booking).permit(:status, :start_date)
  end
end
